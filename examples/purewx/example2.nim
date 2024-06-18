import "../../wxnim/wx", "../../wxnim/richtext", "../../wxnim/stc"

proc createFrame(): ptr WxFrame
let f = createFrame()

proc handleButtonClick(e: var WxCommandEvent) {.cdecl.} =
  f[].setStatusText("Quit called!")

proc createFrame(): ptr WxFrame =
  result = cnew constructWxFrame(nil, wxID_ANY, "Hello World",
                                 constructWxPoint(50, 50),
                                 constructWxSize(450, 340))
  result[].createStatusBar()
  result[].setStatusText("Welcome to wxWidgets!")

  let menuFile = cnew constructWxMenu()

  let helloID = newControlId()
  menuFile[].append(helloID, "&Hello...\tCtrl-H",
                   "Help string shown in status bar for this menu item")
  menuFile[].appendSeparator()
  menuFile[].append(wxID_EXIT)
  let menuHelp = cnew constructWxMenu()
  menuHelp[].append(wxID_ABOUT)
  let menuBar = cnew constructWxMenuBar()
  menuBar.append(menuFile, "&File")
  menuBar.append(menuHelp, "&Help")
  result[].setMenuBar(menuBar)

  menuBar[].`bind`(wxEVT_MENU, handleButtonClick, wxID_EXIT)

  let text = cnew constructWxStyledTextCtrl(result, wxID_ANY)
  text.styleClearAll()
  text.setLexer(wxSTC_LEX_CPP)

  text.setMarginWidth(0, 50)
  text.styleSetForeground(wxSTC_STYLE_LINENUMBER, constructWxColour(75, 75, 75) )
  text.styleSetBackground(wxSTC_STYLE_LINENUMBER, constructWxColour(220, 220, 220))
  text.setMarginType(0, wxSTC_MARGIN_NUMBER)

  text.setKeyWords(0, "return for while break continue")
  text.setKeyWords(1, "const int float void char double")

  let sizer = cnew constructWxBoxSizer(wxVERTICAL)
  sizer[].add(text, 1, wxEXPAND.cint)
  result.setSizer(sizer)


f.show(true)

runMainLoop()
