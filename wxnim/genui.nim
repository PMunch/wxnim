import macros

{.experimental.}

proc `[]`(s: NimNode, x: Slice[int]): seq[NimNode] =
  ## slice operation for NimNodes.
  var a = x.a
  var L = x.b - a + 1
  newSeq(result, L)
  for i in 0..<L: result[i] = s[i + a]

proc high(s: NimNode):int =
  s.len-1

type WidgetArguments = ref object
  identifier:NimNode
  name: string
  addArguments: seq[NimNode]
  arguments: seq[NimNode]
  children: seq[WidgetArguments]
  parent: WidgetArguments
  sizer: WidgetArguments
  event: tuple[evname: NimNode, evcallback: NimNode]
  isStr: bool
  isIdentified: bool
  isSizer: bool

proc parseNode(node:NimNode):WidgetArguments
proc parseBracketExpr(bracketExpr:NimNode):WidgetArguments
proc parseChildren(p: WidgetArguments, stmtList:NimNode): seq[WidgetArguments] =
  result = @[]
  for child in stmtList:
    var node = parseNode(child)
    node.parent = p
    result.add node


proc parseCall(call:NimNode):WidgetArguments =
  let hasAddArguments = call[0].kind == nnkBracketExpr
  let hasChildren = call[call.high].kind == nnkStmtList
  if hasAddArguments:
    result = parseBracketExpr(call[0])
  else:
    new result
    result.name = $call[0]
  if result.arguments.len == 0:
    result.arguments = if hasChildren: call[1..<call.high] else: call[1..call.high]
  #else:
  #  for arg in if hasChildren: call[1..<call.high] else: call[1..call.high]:
  #    result.arguments.add arg
  result.children = if hasChildren: parseChildren(result, call[call.high]) else: @[]

proc parseBracketExpr(bracketExpr:NimNode):WidgetArguments =
  let hasArguments = bracketExpr[0].kind == nnkCall
  let hasChildren = bracketExpr[bracketExpr.high].kind == nnkStmtList
  if hasArguments:
    result = parseCall(bracketExpr[0])
  else:
    new result
    result.name = $bracketExpr[0]
  result.addArguments = if hasChildren: bracketExpr[1..<bracketExpr.high] else: bracketExpr[1..bracketExpr.high]
  result.children = if hasChildren: result.parseChildren(bracketExpr[bracketExpr.high]) else: @[]

proc parseInfix(infix:NimNode):WidgetArguments=
  if $infix[0] == "%":
    result = parseNode(infix[2])
    result.identifier = infix[1]
  elif $infix[0] == "->":
    result = parseNode(infix[1])
    result.event = (evname: infix[2][0], evcallback: infix[2][1])
  elif $infix[0] == "|":
    result = parseNode(infix[1])
    result.sizer = parseNode(infix[2])
    result.sizer.isSizer = true

  if infix[infix.high].kind == nnkStmtList:
    result.children = result.parseChildren(infix[infix.high])


proc parseIdent(i:NimNode):WidgetArguments=
  result = WidgetArguments(
    identifier: nil,
    name: $i,
    addArguments: @[],
    arguments: @[],
    children: @[],
  )

proc parsePrefix(prefix:NimNode):WidgetArguments=
  result = parseNode(prefix[1])
  result.isIdentified = true
  if prefix[prefix.high].kind == nnkStmtList:
    result.children = result.parseChildren(prefix[prefix.high])

proc parseString(str:NimNode):WidgetArguments=
  result = WidgetArguments(
    name: str.strVal,
    isStr: true
  )

proc parseNode(node:NimNode):WidgetArguments =
  case node.kind:
  of nnkCall:
    result = parseCall(node)
  of nnkBracketExpr:
    result = parseBracketExpr(node)
  of nnkInfix:
    result = parseInfix(node)
  of nnkPrefix:
    result = parsePrefix(node)
  of nnkIdent:
    result = parseIdent(node)
  of nnkStrLit:
    result = parseString(node)
  else:
    echo "Got unsupported node: ", $node.kind, ": ", node.lineInfo
    discard

template updateOrCreate(ident: untyped, value: untyped)=
  when not declared(ident):
    var ident = value
  else:
    ident = value

proc createAddCall(sizerIdent: NimNode, child: WidgetArguments): NimNode =
  var addCall =
    if child.sizer != nil and (ident(child.sizer.name) == ident"staticboxsizer" or ident(child.sizer.name) == ident"Staticboxsizer"):
      newCall("add", nnkBracketExpr.newTree(sizerIdent), child.sizer.identifier)
    else:
      newCall("add", nnkBracketExpr.newTree(sizerIdent), child.identifier)
  var overridesDefaults: tuple[border, proportion, flag: bool]
  for addArg in child.addArguments:
    addCall.add addArg
    if addArg.kind == nnkExprEqExpr and addArg[0].kind == nnkIdent:
      if $addArg[0] == "border":
        overridesDefaults.border = true
      if $addArg[0] == "proportion":
        overridesDefaults.proportion = true
      if $addArg[0] == "flag":
        overridesDefaults.flag = true
  # Add in defaults since the wxWidgets defaults are pretty bad
  if not overridesDefaults.border:
    addCall.add nnkExprEqExpr.newTree(
      newIdentNode("border"),
      newIntLitNode(5)
    )
  if not overridesDefaults.flag:
    addCall.add nnkExprEqExpr.newTree(
      newIdentNode("flag"),
      nnkInfix.newTree(
        newIdentNode("or"),
        newIdentNode("wxExpand"),
        newIdentNode("wxAll")
      )
    )
  return addCall

proc createWidget(widget: WidgetArguments):NimNode =
  result = newStmtList()
  var call:NimNode
  if widget.isIdentified:
    call = newIdentNode(widget.name)
  else:
    call = newCall("constructWx" & widget.name)
    var hasID = false
    for arg in widget.arguments:
      call.add arg
      if arg.kind == nnkExprEqExpr and $arg[0] == "id":
        hasID = true
    if not widget.isSizer:
      call.add nnkExprEqExpr.newTree(
        newIdentNode("parent"),
        if widget.parent == nil: newNilLit() else: widget.parent.identifier
      )
      if not hasID:
        call.add nnkExprEqExpr.newTree(
          newIdentNode("id"),
          newIdentNode("wxID_ANY")
        )
      if widget.children.len == 1 and widget.children[0].isStr:
        call.add nnkExprEqExpr.newTree(
          newIdentNode("label"),
          newStrLitNode(widget.children[0].name)
        )
    let command =
      nnkCommand.newTree(
        newIdentNode("cnew"),
        call
      )
    if widget.identifier==nil:
      widget.identifier = genSym(nskVar)
      result.add nnkVarSection.newTree(
        nnkIdentDefs.newTree(
            widget.identifier,
            newEmptyNode(),
            command
          )
      )
    else:
      result.add getAst(updateOrCreate(widget.identifier, command))

  if widget.sizer != nil:
    if ident(widget.sizer.name) == ident"staticboxsizer" or ident(widget.sizer.name) == ident"Staticboxsizer" :
      widget.sizer.arguments.add nnkExprEqExpr.newTree(
        newIdentNode("box"),
        widget.identifier
      )
    let sizerCode = createWidget(widget.sizer)
    for node in sizerCode:
      result.add node
    if ident(widget.sizer.name) != ident"staticboxsizer" and ident(widget.sizer.name) != ident"Staticboxsizer":
      result.add newCall("setSizer", nnkBracketExpr.newTree(widget.identifier), widget.sizer.identifier)

  if widget.event.evname != nil:
    result.add newCall("bind", nnkBracketExpr.newTree(widget.identifier), widget.event.evname, widget.event.evcallback)

  for child in widget.children:
    if not child.isStr:
      ## TODO: This is to fix a weird bug in Nim 0.16.0, remove once 0.16.1 drops
      #if child.parent.identifier == nil:
      #  if widget.identifier != nil:
      #    child.parent.identifier = widget.identifier
      ##/TODO
      let childCode = createWidget(child)
      for node in childCode:
        result.add node
      #if child.addArguments != nil and child.addArguments.len != 0:
      if widget.sizer != nil:
        result.add widget.sizer.identifier.createAddCall(child)

macro genui*(args: varargs[untyped]): untyped =
  #echo treeRepr args[0]
  let parsed = nil.parseChildren(args[0])
  result = newStmtList()
  for widget in parsed:
    var w = widget
    let widgetCode = createWidget(w)
    for node in widgetCode:
      result.add(node)
  #echo result.repr


macro addElements*(parentWindow:untyped, args: varargs[untyped]):untyped=
  template addToSizer(parentWidget:NimNode, sizerIdent:NimNode, addBody:NimNode):untyped=
    let sizerIdent = parentWidget.getSizer()
    if sizerIdent!=nil:
      addBody
      sizerIdent.layout()

  #echo treeRepr args[0]
  let parsed = nil.parseChildren(args[0])
  result = newStmtList()
  var parentWidgetArguments = WidgetArguments(identifier: parentWindow)
  let sizerSym = genSym(nskLet)
  var addCalls = newStmtList()
  for widget in parsed:
    var w = widget
    w.parent = parentWidgetArguments
    let widgetCode = createWidget(w)
    for node in widgetCode:
      result.add(node)

    addCalls.add sizerSym.createAddCall(widget)

  result.add getAst(addToSizer(parentWindow, sizerSym, addCalls))
  #echo result.toStrLit
