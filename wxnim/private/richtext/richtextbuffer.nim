

type 
  WxRichTextRangeArray* {.importcpp: "wxRichTextRangeArray", header: wxh.} = object 
  
  WxArrayPtrVoid* {.importcpp: "wxArrayPtrVoid", header: wxh, inheritable.} = object 
  
  WxCommand* {.importcpp: "wxCommand", header: wxh, inheritable.} = object 
  



type 
  WxTextAttrEx* = WxTextAttr


const 
  wxRICHTEXT_USE_OWN_CARET* = 1


const 
  wxRICHTEXT_USE_OPTIMIZED_LINE_DRAWING* = 0


const 
  wxRICHTEXT_HAVE_XMLDOCUMENT_OUTPUT* = 1


const 
  wxRICHTEXT_HAVE_DIRECT_OUTPUT* = 1


var wxRichTextLineBreakChar* {.importcpp: "wxRichTextLineBreakChar", header: wxh.}: WxChar


type 
  WxRichTextFileType* {.size: sizeof(cint), importcpp: "wxRichTextFileType", 
                        header: wxh.} = enum 
    wxRICHTEXT_TYPE_ANY = 0, wxRICHTEXT_TYPE_TEXT, wxRICHTEXT_TYPE_XML, 
    wxRICHTEXT_TYPE_HTML, wxRICHTEXT_TYPE_RTF, wxRICHTEXT_TYPE_PDF



discard "forward decl of wxRichTextCtrl"
discard "forward decl of wxRichTextObject"
discard "forward decl of wxRichTextImage"
discard "forward decl of wxRichTextPlainText"
discard "forward decl of wxRichTextCacheObject"
type 
  WxRichTextObjectList* {.importcpp: "wxRichTextObjectList", header: wxh.} = object 
  

discard "forward decl of wxRichTextLine"
discard "forward decl of wxRichTextParagraph"
discard "forward decl of wxRichTextFileHandler"
discard "forward decl of wxRichTextDrawingHandler"
discard "forward decl of wxRichTextField"
discard "forward decl of wxRichTextFieldType"
discard "forward decl of wxRichTextStyleSheet"
discard "forward decl of wxRichTextListStyleDefinition"
discard "forward decl of wxRichTextEvent"
discard "forward decl of wxRichTextRenderer"
discard "forward decl of wxRichTextBuffer"
discard "forward decl of wxRichTextXMLHandler"
discard "forward decl of wxRichTextParagraphLayoutBox"
discard "forward decl of wxRichTextImageBlock"
discard "forward decl of wxXmlNode"
type 
  WxRichTextFloatCollector* {.importcpp: "wxRichTextFloatCollector", header: wxh.} = object 
  

discard "forward decl of wxDataInputStream"
discard "forward decl of wxDataOutputStream"
const 
  wxRICHTEXT_FIXED_WIDTH* = 0x00000001
  wxRICHTEXT_FIXED_HEIGHT* = 0x00000002
  wxRICHTEXT_VARIABLE_WIDTH* = 0x00000004
  wxRICHTEXT_VARIABLE_HEIGHT* = 0x00000008


const 
  wxRICHTEXT_LAYOUT_SPECIFIED_RECT* = 0x00000010


const 
  wxRICHTEXT_DRAW_IGNORE_CACHE* = 0x00000001
  wxRICHTEXT_DRAW_SELECTED* = 0x00000002
  wxRICHTEXT_DRAW_PRINT* = 0x00000004
  wxRICHTEXT_DRAW_GUIDELINES* = 0x00000008


type 
  WxRichTextHitTestFlags* {.size: sizeof(cint), importcpp: "wxDataOutputStream::wxRichTextHitTestFlags", 
                            header: wxh.} = enum 
    wxRICHTEXT_HITTEST_NONE = 0x00000001, 
    wxRICHTEXT_HITTEST_BEFORE = 0x00000002, 
    wxRICHTEXT_HITTEST_AFTER = 0x00000004, wxRICHTEXT_HITTEST_ON = 0x00000008, 
    wxRICHTEXT_HITTEST_OUTSIDE = 0x00000010, 
    wxRICHTEXT_HITTEST_NO_NESTED_OBJECTS = 0x00000020, 
    wxRICHTEXT_HITTEST_NO_FLOATING_OBJECTS = 0x00000040, 
    wxRICHTEXT_HITTEST_HONOUR_ATOMIC = 0x00000080



const 
  wxRICHTEXT_FORMATTED* = 0x00000001
  wxRICHTEXT_UNFORMATTED* = 0x00000002
  wxRICHTEXT_CACHE_SIZE* = 0x00000004
  wxRICHTEXT_HEIGHT_ONLY* = 0x00000008


const 
  wxRICHTEXT_SETSTYLE_NONE* = 0x00000000


const 
  wxRICHTEXT_SETSTYLE_WITH_UNDO* = 0x00000001


const 
  wxRICHTEXT_SETSTYLE_OPTIMIZE* = 0x00000002


const 
  wxRICHTEXT_SETSTYLE_PARAGRAPHS_ONLY* = 0x00000004


const 
  wxRICHTEXT_SETSTYLE_CHARACTERS_ONLY* = 0x00000008


const 
  wxRICHTEXT_SETSTYLE_RENUMBER* = 0x00000010


const 
  wxRICHTEXT_SETSTYLE_SPECIFY_LEVEL* = 0x00000020


const 
  wxRICHTEXT_SETSTYLE_RESET* = 0x00000040


const 
  wxRICHTEXT_SETSTYLE_REMOVE* = 0x00000080


const 
  wxRICHTEXT_SETPROPERTIES_NONE* = 0x00000000


const 
  wxRICHTEXT_SETPROPERTIES_WITH_UNDO* = 0x00000001


const 
  wxRICHTEXT_SETPROPERTIES_PARAGRAPHS_ONLY* = 0x00000002


const 
  wxRICHTEXT_SETPROPERTIES_CHARACTERS_ONLY* = 0x00000004


const 
  wxRICHTEXT_SETPROPERTIES_RESET* = 0x00000008


const 
  wxRICHTEXT_SETPROPERTIES_REMOVE* = 0x00000010


const 
  wxRICHTEXT_INSERT_NONE* = 0x00000000
  wxRICHTEXT_INSERT_WITH_PREVIOUS_PARAGRAPH_STYLE* = 0x00000001
  wxRICHTEXT_INSERT_INTERACTIVE* = 0x00000002


const 
  wxTEXT_ATTR_KEEP_FIRST_PARA_STYLE* = 0x20000000


const 
  wxSCRIPT_MUL_FACTOR* = 1.5


type 
  WxTextAttrDimensionFlags* = cushort


type 
  WxTextBoxAttrFlags* {.size: sizeof(cint), 
                        importcpp: "wxDataOutputStream::wxTextBoxAttrFlags", 
                        header: wxh.} = enum 
    wxTEXT_BOX_ATTR_FLOAT = 0x00000001, wxTEXT_BOX_ATTR_CLEAR = 0x00000002, 
    wxTEXT_BOX_ATTR_COLLAPSE_BORDERS = 0x00000004, 
    wxTEXT_BOX_ATTR_VERTICAL_ALIGNMENT = 0x00000008, 
    wxTEXT_BOX_ATTR_BOX_STYLE_NAME = 0x00000010



type 
  WxTextAttrValueFlags* {.size: sizeof(cint), importcpp: "wxDataOutputStream::wxTextAttrValueFlags", 
                          header: wxh.} = enum 
    wxTEXT_ATTR_VALUE_VALID = 0x00001000

const 
  wxTEXT_ATTR_VALUE_VALID_MASK = wxTEXT_ATTR_VALUE_VALID


type 
  WxTextAttrUnits* {.size: sizeof(cint), 
                     importcpp: "wxDataOutputStream::wxTextAttrUnits", 
                     header: wxh.} = enum 
    wxTEXT_ATTR_UNITS_TENTHS_MM = 0x00000001, 
    wxTEXT_ATTR_UNITS_PIXELS = 0x00000002, 
    wxTEXT_ATTR_UNITS_PERCENTAGE = 0x00000004, 
    wxTEXT_ATTR_UNITS_POINTS = 0x00000008, 
    wxTEXT_ATTR_UNITS_HUNDREDTHS_POINT = 0x00000100, 
    wxTEXT_ATTR_UNITS_MASK = 0x0000010F



type 
  WxTextBoxAttrPosition* {.size: sizeof(cint), importcpp: "wxDataOutputStream::wxTextBoxAttrPosition", 
                           header: wxh.} = enum 
    wxTEXT_BOX_ATTR_POSITION_STATIC = 0x00000000, 
    wxTEXT_BOX_ATTR_POSITION_RELATIVE = 0x00000010, 
    wxTEXT_BOX_ATTR_POSITION_ABSOLUTE = 0x00000020, 
    wxTEXT_BOX_ATTR_POSITION_FIXED = 0x00000040, 
    wxTEXT_BOX_ATTR_POSITION_MASK = 0x000000F0



type 
  WxTextAttrDimension* {.importcpp: "wxTextAttrDimension", header: wxh.} = object 
    mValue* {.importc: "m_value".}: cint
    mFlags* {.importc: "m_flags".}: WxTextAttrDimensionFlags


proc constructwxTextAttrDimension*(): WxTextAttrDimension {.cdecl, constructor, 
    importcpp: "wxTextAttrDimension(@)", header: wxh.}
proc constructwxTextAttrDimension*(value: cint; units: WxTextAttrUnits = wxTEXT_ATTR_UNITS_TENTHS_MM): WxTextAttrDimension {.
    cdecl, constructor, importcpp: "wxTextAttrDimension(@)", header: wxh.}
proc reset*(this: var WxTextAttrDimension) {.cdecl, importcpp: "Reset", 
    header: wxh.}
proc eqPartial*(this: WxTextAttrDimension; dim: WxTextAttrDimension; 
                weakTest: bool = true): bool {.noSideEffect, cdecl, 
    importcpp: "EqPartial", header: wxh.}
proc apply*(this: var WxTextAttrDimension; dim: WxTextAttrDimension; 
            compareWith: ptr WxTextAttrDimension = nil): bool {.cdecl, 
    importcpp: "Apply", header: wxh.}
proc collectCommonAttributes*(this: var WxTextAttrDimension; 
                              attr: WxTextAttrDimension; 
                              clashingAttr: var WxTextAttrDimension; 
                              absentAttr: var WxTextAttrDimension) {.cdecl, 
    importcpp: "CollectCommonAttributes", header: wxh.}
proc `==`*(this: WxTextAttrDimension; dim: WxTextAttrDimension): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", header: wxh.}
proc getValue*(this: WxTextAttrDimension): cint {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: wxh.}
proc getValueMM*(this: WxTextAttrDimension): cfloat {.noSideEffect, cdecl, 
    importcpp: "GetValueMM", header: wxh.}
proc setValueMM*(this: var WxTextAttrDimension; value: cfloat) {.cdecl, 
    importcpp: "SetValueMM", header: wxh.}
proc setValue*(this: var WxTextAttrDimension; value: cint) {.cdecl, 
    importcpp: "SetValue", header: wxh.}
proc setValue*(this: var WxTextAttrDimension; value: cint; 
               flags: WxTextAttrDimensionFlags) {.cdecl, importcpp: "SetValue", 
    header: wxh.}
proc setValue*(this: var WxTextAttrDimension; value: cint; 
               units: WxTextAttrUnits) {.cdecl, importcpp: "SetValue", 
    header: wxh.}
proc setValue*(this: var WxTextAttrDimension; dim: WxTextAttrDimension) {.cdecl, 
    importcpp: "SetValue", header: wxh.}
proc getUnits*(this: WxTextAttrDimension): WxTextAttrUnits {.noSideEffect, 
    cdecl, importcpp: "GetUnits", header: wxh.}
proc setUnits*(this: var WxTextAttrDimension; units: WxTextAttrUnits) {.cdecl, 
    importcpp: "SetUnits", header: wxh.}
proc getPosition*(this: WxTextAttrDimension): WxTextBoxAttrPosition {.
    noSideEffect, cdecl, importcpp: "GetPosition", header: wxh.}
proc setPosition*(this: var WxTextAttrDimension; pos: WxTextBoxAttrPosition) {.
    cdecl, importcpp: "SetPosition", header: wxh.}
proc isValid*(this: WxTextAttrDimension): bool {.noSideEffect, cdecl, 
    importcpp: "IsValid", header: wxh.}
proc setValid*(this: var WxTextAttrDimension; b: bool) {.cdecl, 
    importcpp: "SetValid", header: wxh.}
proc getFlags*(this: WxTextAttrDimension): WxTextAttrDimensionFlags {.
    noSideEffect, cdecl, importcpp: "GetFlags", header: wxh.}
proc setFlags*(this: var WxTextAttrDimension; flags: WxTextAttrDimensionFlags) {.
    cdecl, importcpp: "SetFlags", header: wxh.}

type 
  WxTextAttrDimensions* {.importcpp: "wxTextAttrDimensions", header: wxh.} = object 
    mLeft* {.importc: "m_left".}: WxTextAttrDimension
    mTop* {.importc: "m_top".}: WxTextAttrDimension
    mRight* {.importc: "m_right".}: WxTextAttrDimension
    mBottom* {.importc: "m_bottom".}: WxTextAttrDimension


proc constructwxTextAttrDimensions*(): WxTextAttrDimensions {.cdecl, 
    constructor, importcpp: "wxTextAttrDimensions(@)", header: wxh.}
proc reset*(this: var WxTextAttrDimensions) {.cdecl, importcpp: "Reset", 
    header: wxh.}
proc `==`*(this: WxTextAttrDimensions; dims: WxTextAttrDimensions): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", header: wxh.}
proc eqPartial*(this: WxTextAttrDimensions; dims: WxTextAttrDimensions; 
                weakTest: bool = true): bool {.noSideEffect, cdecl, 
    importcpp: "EqPartial", header: wxh.}
proc apply*(this: var WxTextAttrDimensions; dims: WxTextAttrDimensions; 
            compareWith: ptr WxTextAttrDimensions = nil): bool {.cdecl, 
    importcpp: "Apply", header: wxh.}
proc collectCommonAttributes*(this: var WxTextAttrDimensions; 
                              attr: WxTextAttrDimensions; 
                              clashingAttr: var WxTextAttrDimensions; 
                              absentAttr: var WxTextAttrDimensions) {.cdecl, 
    importcpp: "CollectCommonAttributes", header: wxh.}
proc removeStyle*(this: var WxTextAttrDimensions; attr: WxTextAttrDimensions): bool {.
    cdecl, importcpp: "RemoveStyle", header: wxh.}
proc getLeft*(this: WxTextAttrDimensions): WxTextAttrDimension {.noSideEffect, 
    cdecl, importcpp: "GetLeft", header: wxh.}
proc getLeft*(this: var WxTextAttrDimensions): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetLeft", header: wxh.}
proc getRight*(this: WxTextAttrDimensions): WxTextAttrDimension {.noSideEffect, 
    cdecl, importcpp: "GetRight", header: wxh.}
proc getRight*(this: var WxTextAttrDimensions): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetRight", header: wxh.}
proc getTop*(this: WxTextAttrDimensions): WxTextAttrDimension {.noSideEffect, 
    cdecl, importcpp: "GetTop", header: wxh.}
proc getTop*(this: var WxTextAttrDimensions): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetTop", header: wxh.}
proc getBottom*(this: WxTextAttrDimensions): WxTextAttrDimension {.noSideEffect, 
    cdecl, importcpp: "GetBottom", header: wxh.}
proc getBottom*(this: var WxTextAttrDimensions): var WxTextAttrDimension {.
    cdecl, importcpp: "GetBottom", header: wxh.}
proc isValid*(this: WxTextAttrDimensions): bool {.noSideEffect, cdecl, 
    importcpp: "IsValid", header: wxh.}

type 
  WxTextAttrSize* {.importcpp: "wxTextAttrSize", header: wxh.} = object 
    mWidth* {.importc: "m_width".}: WxTextAttrDimension
    mHeight* {.importc: "m_height".}: WxTextAttrDimension


proc constructwxTextAttrSize*(): WxTextAttrSize {.cdecl, constructor, 
    importcpp: "wxTextAttrSize(@)", header: wxh.}
proc reset*(this: var WxTextAttrSize) {.cdecl, importcpp: "Reset", header: wxh.}
proc `==`*(this: WxTextAttrSize; size: WxTextAttrSize): bool {.noSideEffect, 
    cdecl, importcpp: "(# == #)", header: wxh.}
proc eqPartial*(this: WxTextAttrSize; size: WxTextAttrSize; 
                weakTest: bool = true): bool {.noSideEffect, cdecl, 
    importcpp: "EqPartial", header: wxh.}
proc apply*(this: var WxTextAttrSize; dims: WxTextAttrSize; 
            compareWith: ptr WxTextAttrSize = nil): bool {.cdecl, 
    importcpp: "Apply", header: wxh.}
proc collectCommonAttributes*(this: var WxTextAttrSize; attr: WxTextAttrSize; 
                              clashingAttr: var WxTextAttrSize; 
                              absentAttr: var WxTextAttrSize) {.cdecl, 
    importcpp: "CollectCommonAttributes", header: wxh.}
proc removeStyle*(this: var WxTextAttrSize; attr: WxTextAttrSize): bool {.cdecl, 
    importcpp: "RemoveStyle", header: wxh.}
proc getWidth*(this: var WxTextAttrSize): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetWidth", header: wxh.}
proc getWidth*(this: WxTextAttrSize): WxTextAttrDimension {.noSideEffect, cdecl, 
    importcpp: "GetWidth", header: wxh.}
proc setWidth*(this: var WxTextAttrSize; value: cint; 
               flags: WxTextAttrDimensionFlags) {.cdecl, importcpp: "SetWidth", 
    header: wxh.}
proc setWidth*(this: var WxTextAttrSize; value: cint; units: WxTextAttrUnits) {.
    cdecl, importcpp: "SetWidth", header: wxh.}
proc setWidth*(this: var WxTextAttrSize; dim: WxTextAttrDimension) {.cdecl, 
    importcpp: "SetWidth", header: wxh.}
proc getHeight*(this: var WxTextAttrSize): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetHeight", header: wxh.}
proc getHeight*(this: WxTextAttrSize): WxTextAttrDimension {.noSideEffect, 
    cdecl, importcpp: "GetHeight", header: wxh.}
proc setHeight*(this: var WxTextAttrSize; value: cint; 
                flags: WxTextAttrDimensionFlags) {.cdecl, 
    importcpp: "SetHeight", header: wxh.}
proc setHeight*(this: var WxTextAttrSize; value: cint; units: WxTextAttrUnits) {.
    cdecl, importcpp: "SetHeight", header: wxh.}
proc setHeight*(this: var WxTextAttrSize; dim: WxTextAttrDimension) {.cdecl, 
    importcpp: "SetHeight", header: wxh.}
proc isValid*(this: WxTextAttrSize): bool {.noSideEffect, cdecl, 
    importcpp: "IsValid", header: wxh.}

type 
  WxTextAttrDimensionConverter* {.importcpp: "wxTextAttrDimensionConverter", 
                                  header: wxh.} = object 
    mPpi* {.importc: "m_ppi".}: cint
    mScale* {.importc: "m_scale".}: cdouble
    mParentSize* {.importc: "m_parentSize".}: WxSize


proc constructwxTextAttrDimensionConverter*(dc: var WxDC; scale: cdouble = 1.0; 
    parentSize: WxSize = wxDefaultSize): WxTextAttrDimensionConverter {.cdecl, 
    constructor, importcpp: "wxTextAttrDimensionConverter(@)", header: wxh.}
proc constructwxTextAttrDimensionConverter*(ppi: cint; scale: cdouble = 1.0; 
    parentSize: WxSize = wxDefaultSize): WxTextAttrDimensionConverter {.cdecl, 
    constructor, importcpp: "wxTextAttrDimensionConverter(@)", header: wxh.}
proc getPixels*(this: WxTextAttrDimensionConverter; dim: WxTextAttrDimension; 
                direction = wxHORIZONTAL): cint {.noSideEffect, cdecl, 
    importcpp: "GetPixels", header: wxh.}
proc getTenthsMM*(this: WxTextAttrDimensionConverter; dim: WxTextAttrDimension): cint {.
    noSideEffect, cdecl, importcpp: "GetTenthsMM", header: wxh.}
proc convertTenthsMMToPixels*(this: WxTextAttrDimensionConverter; units: cint): cint {.
    noSideEffect, cdecl, importcpp: "ConvertTenthsMMToPixels", header: wxh.}
proc convertPixelsToTenthsMM*(this: WxTextAttrDimensionConverter; pixels: cint): cint {.
    noSideEffect, cdecl, importcpp: "ConvertPixelsToTenthsMM", header: wxh.}
proc setScale*(this: var WxTextAttrDimensionConverter; scale: cdouble) {.cdecl, 
    importcpp: "SetScale", header: wxh.}
proc getScale*(this: WxTextAttrDimensionConverter): cdouble {.noSideEffect, 
    cdecl, importcpp: "GetScale", header: wxh.}
proc setPPI*(this: var WxTextAttrDimensionConverter; ppi: cint) {.cdecl, 
    importcpp: "SetPPI", header: wxh.}
proc getPPI*(this: WxTextAttrDimensionConverter): cint {.noSideEffect, cdecl, 
    importcpp: "GetPPI", header: wxh.}
proc setParentSize*(this: var WxTextAttrDimensionConverter; parentSize: WxSize) {.
    cdecl, importcpp: "SetParentSize", header: wxh.}
proc getParentSize*(this: WxTextAttrDimensionConverter): WxSize {.noSideEffect, 
    cdecl, importcpp: "GetParentSize", header: wxh.}

type 
  WxTextAttrBorderStyle* {.size: sizeof(cint), importcpp: "wxDataOutputStream::wxTextAttrBorderStyle", 
                           header: wxh.} = enum 
    wxTEXT_BOX_ATTR_BORDER_NONE = 0, wxTEXT_BOX_ATTR_BORDER_SOLID = 1, 
    wxTEXT_BOX_ATTR_BORDER_DOTTED = 2, wxTEXT_BOX_ATTR_BORDER_DASHED = 3, 
    wxTEXT_BOX_ATTR_BORDER_DOUBLE = 4, wxTEXT_BOX_ATTR_BORDER_GROOVE = 5, 
    wxTEXT_BOX_ATTR_BORDER_RIDGE = 6, wxTEXT_BOX_ATTR_BORDER_INSET = 7, 
    wxTEXT_BOX_ATTR_BORDER_OUTSET = 8



type 
  WxTextAttrBorderFlags* {.size: sizeof(cint), importcpp: "wxDataOutputStream::wxTextAttrBorderFlags", 
                           header: wxh.} = enum 
    wxTEXT_BOX_ATTR_BORDER_STYLE = 0x00000001, 
    wxTEXT_BOX_ATTR_BORDER_COLOUR = 0x00000002



type 
  WxTextAttrBorderWidth* {.size: sizeof(cint), importcpp: "wxDataOutputStream::wxTextAttrBorderWidth", 
                           header: wxh.} = enum 
    wxTEXT_BOX_ATTR_BORDER_THICK = - 3, wxTEXT_BOX_ATTR_BORDER_MEDIUM = - 2, 
    wxTEXT_BOX_ATTR_BORDER_THIN = - 1



type 
  WxTextBoxAttrFloatStyle* {.size: sizeof(cint), importcpp: "wxDataOutputStream::wxTextBoxAttrFloatStyle", 
                             header: wxh.} = enum 
    wxTEXT_BOX_ATTR_FLOAT_NONE = 0, wxTEXT_BOX_ATTR_FLOAT_LEFT = 1, 
    wxTEXT_BOX_ATTR_FLOAT_RIGHT = 2



type 
  WxTextBoxAttrClearStyle* {.size: sizeof(cint), importcpp: "wxDataOutputStream::wxTextBoxAttrClearStyle", 
                             header: wxh.} = enum 
    wxTEXT_BOX_ATTR_CLEAR_NONE = 0, wxTEXT_BOX_ATTR_CLEAR_LEFT = 1, 
    wxTEXT_BOX_ATTR_CLEAR_RIGHT = 2, wxTEXT_BOX_ATTR_CLEAR_BOTH = 3



type 
  WxTextBoxAttrCollapseMode* {.size: sizeof(cint), importcpp: "wxDataOutputStream::wxTextBoxAttrCollapseMode", 
                               header: wxh.} = enum 
    wxTEXT_BOX_ATTR_COLLAPSE_NONE = 0, wxTEXT_BOX_ATTR_COLLAPSE_FULL = 1



type 
  WxTextBoxAttrVerticalAlignment* {.size: sizeof(cint), importcpp: "wxDataOutputStream::wxTextBoxAttrVerticalAlignment", 
                                    header: wxh.} = enum 
    wxTEXT_BOX_ATTR_VERTICAL_ALIGNMENT_NONE = 0, 
    wxTEXT_BOX_ATTR_VERTICAL_ALIGNMENT_TOP = 1, 
    wxTEXT_BOX_ATTR_VERTICAL_ALIGNMENT_CENTRE = 2, 
    wxTEXT_BOX_ATTR_VERTICAL_ALIGNMENT_BOTTOM = 3



type 
  WxTextAttrBorder* {.importcpp: "wxTextAttrBorder", header: wxh.} = object 
    mBorderStyle* {.importc: "m_borderStyle".}: cint
    mBorderColour* {.importc: "m_borderColour".}: culong
    mBorderWidth* {.importc: "m_borderWidth".}: WxTextAttrDimension
    mFlags* {.importc: "m_flags".}: cint


proc constructwxTextAttrBorder*(): WxTextAttrBorder {.cdecl, constructor, 
    importcpp: "wxTextAttrBorder(@)", header: wxh.}
proc `==`*(this: WxTextAttrBorder; border: WxTextAttrBorder): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", header: wxh.}
proc reset*(this: var WxTextAttrBorder) {.cdecl, importcpp: "Reset", header: wxh.}
proc eqPartial*(this: WxTextAttrBorder; border: WxTextAttrBorder; 
                weakTest: bool = true): bool {.noSideEffect, cdecl, 
    importcpp: "EqPartial", header: wxh.}
proc apply*(this: var WxTextAttrBorder; border: WxTextAttrBorder; 
            compareWith: ptr WxTextAttrBorder = nil): bool {.cdecl, 
    importcpp: "Apply", header: wxh.}
proc removeStyle*(this: var WxTextAttrBorder; attr: WxTextAttrBorder): bool {.
    cdecl, importcpp: "RemoveStyle", header: wxh.}
proc collectCommonAttributes*(this: var WxTextAttrBorder; 
                              attr: WxTextAttrBorder; 
                              clashingAttr: var WxTextAttrBorder; 
                              absentAttr: var WxTextAttrBorder) {.cdecl, 
    importcpp: "CollectCommonAttributes", header: wxh.}
proc setStyle*(this: var WxTextAttrBorder; style: cint) {.cdecl, 
    importcpp: "SetStyle", header: wxh.}
proc getStyle*(this: WxTextAttrBorder): cint {.noSideEffect, cdecl, 
    importcpp: "GetStyle", header: wxh.}
proc setColour*(this: var WxTextAttrBorder; colour: culong) {.cdecl, 
    importcpp: "SetColour", header: wxh.}
proc setColour*(this: var WxTextAttrBorder; colour: WxColour) {.cdecl, 
    importcpp: "SetColour", header: wxh.}
proc getColourLong*(this: WxTextAttrBorder): culong {.noSideEffect, cdecl, 
    importcpp: "GetColourLong", header: wxh.}
proc getColour*(this: WxTextAttrBorder): WxColour {.noSideEffect, cdecl, 
    importcpp: "GetColour", header: wxh.}
proc getWidth*(this: var WxTextAttrBorder): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetWidth", header: wxh.}
proc getWidth*(this: WxTextAttrBorder): WxTextAttrDimension {.noSideEffect, 
    cdecl, importcpp: "GetWidth", header: wxh.}
proc setWidth*(this: var WxTextAttrBorder; width: WxTextAttrDimension) {.cdecl, 
    importcpp: "SetWidth", header: wxh.}
proc setWidth*(this: var WxTextAttrBorder; value: cint; 
               units: WxTextAttrUnits = wxTEXT_ATTR_UNITS_TENTHS_MM) {.cdecl, 
    importcpp: "SetWidth", header: wxh.}
proc hasStyle*(this: WxTextAttrBorder): bool {.noSideEffect, cdecl, 
    importcpp: "HasStyle", header: wxh.}
proc hasColour*(this: WxTextAttrBorder): bool {.noSideEffect, cdecl, 
    importcpp: "HasColour", header: wxh.}
proc hasWidth*(this: WxTextAttrBorder): bool {.noSideEffect, cdecl, 
    importcpp: "HasWidth", header: wxh.}
proc isValid*(this: WxTextAttrBorder): bool {.noSideEffect, cdecl, 
    importcpp: "IsValid", header: wxh.}
proc makeValid*(this: var WxTextAttrBorder) {.cdecl, importcpp: "MakeValid", 
    header: wxh.}
proc isDefault*(this: WxTextAttrBorder): bool {.noSideEffect, cdecl, 
    importcpp: "IsDefault", header: wxh.}
proc getFlags*(this: WxTextAttrBorder): cint {.noSideEffect, cdecl, 
    importcpp: "GetFlags", header: wxh.}
proc setFlags*(this: var WxTextAttrBorder; flags: cint) {.cdecl, 
    importcpp: "SetFlags", header: wxh.}
proc addFlag*(this: var WxTextAttrBorder; flag: cint) {.cdecl, 
    importcpp: "AddFlag", header: wxh.}
proc removeFlag*(this: var WxTextAttrBorder; flag: cint) {.cdecl, 
    importcpp: "RemoveFlag", header: wxh.}

type 
  WxTextAttrBorders* {.importcpp: "wxTextAttrBorders", header: wxh.} = object 
    mLeft* {.importc: "m_left".}: WxTextAttrBorder
    mRight* {.importc: "m_right".}: WxTextAttrBorder
    mTop* {.importc: "m_top".}: WxTextAttrBorder
    mBottom* {.importc: "m_bottom".}: WxTextAttrBorder


proc constructwxTextAttrBorders*(): WxTextAttrBorders {.cdecl, constructor, 
    importcpp: "wxTextAttrBorders(@)", header: wxh.}
proc `==`*(this: WxTextAttrBorders; borders: WxTextAttrBorders): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", header: wxh.}
proc setStyle*(this: var WxTextAttrBorders; style: cint) {.cdecl, 
    importcpp: "SetStyle", header: wxh.}
proc setColour*(this: var WxTextAttrBorders; colour: culong) {.cdecl, 
    importcpp: "SetColour", header: wxh.}
proc setColour*(this: var WxTextAttrBorders; colour: WxColour) {.cdecl, 
    importcpp: "SetColour", header: wxh.}
proc setWidth*(this: var WxTextAttrBorders; width: WxTextAttrDimension) {.cdecl, 
    importcpp: "SetWidth", header: wxh.}
proc setWidth*(this: var WxTextAttrBorders; value: cint; 
               units: WxTextAttrUnits = wxTEXT_ATTR_UNITS_TENTHS_MM) {.cdecl, 
    importcpp: "SetWidth", header: wxh.}
proc reset*(this: var WxTextAttrBorders) {.cdecl, importcpp: "Reset", 
    header: wxh.}
proc eqPartial*(this: WxTextAttrBorders; borders: WxTextAttrBorders; 
                weakTest: bool = true): bool {.noSideEffect, cdecl, 
    importcpp: "EqPartial", header: wxh.}
proc apply*(this: var WxTextAttrBorders; borders: WxTextAttrBorders; 
            compareWith: ptr WxTextAttrBorders = nil): bool {.cdecl, 
    importcpp: "Apply", header: wxh.}
proc removeStyle*(this: var WxTextAttrBorders; attr: WxTextAttrBorders): bool {.
    cdecl, importcpp: "RemoveStyle", header: wxh.}
proc collectCommonAttributes*(this: var WxTextAttrBorders; 
                              attr: WxTextAttrBorders; 
                              clashingAttr: var WxTextAttrBorders; 
                              absentAttr: var WxTextAttrBorders) {.cdecl, 
    importcpp: "CollectCommonAttributes", header: wxh.}
proc isValid*(this: WxTextAttrBorders): bool {.noSideEffect, cdecl, 
    importcpp: "IsValid", header: wxh.}
proc isDefault*(this: WxTextAttrBorders): bool {.noSideEffect, cdecl, 
    importcpp: "IsDefault", header: wxh.}
proc getLeft*(this: WxTextAttrBorders): WxTextAttrBorder {.noSideEffect, cdecl, 
    importcpp: "GetLeft", header: wxh.}
proc getLeft*(this: var WxTextAttrBorders): var WxTextAttrBorder {.cdecl, 
    importcpp: "GetLeft", header: wxh.}
proc getRight*(this: WxTextAttrBorders): WxTextAttrBorder {.noSideEffect, cdecl, 
    importcpp: "GetRight", header: wxh.}
proc getRight*(this: var WxTextAttrBorders): var WxTextAttrBorder {.cdecl, 
    importcpp: "GetRight", header: wxh.}
proc getTop*(this: WxTextAttrBorders): WxTextAttrBorder {.noSideEffect, cdecl, 
    importcpp: "GetTop", header: wxh.}
proc getTop*(this: var WxTextAttrBorders): var WxTextAttrBorder {.cdecl, 
    importcpp: "GetTop", header: wxh.}
proc getBottom*(this: WxTextAttrBorders): WxTextAttrBorder {.noSideEffect, 
    cdecl, importcpp: "GetBottom", header: wxh.}
proc getBottom*(this: var WxTextAttrBorders): var WxTextAttrBorder {.cdecl, 
    importcpp: "GetBottom", header: wxh.}

type 
  WxTextBoxAttr* {.importcpp: "wxTextBoxAttr", header: wxh.} = object 
    mFlags* {.importc: "m_flags".}: cint
    mMargins* {.importc: "m_margins".}: WxTextAttrDimensions
    mPadding* {.importc: "m_padding".}: WxTextAttrDimensions
    mPosition* {.importc: "m_position".}: WxTextAttrDimensions
    mSize* {.importc: "m_size".}: WxTextAttrSize
    mMinSize* {.importc: "m_minSize".}: WxTextAttrSize
    mMaxSize* {.importc: "m_maxSize".}: WxTextAttrSize
    mBorder* {.importc: "m_border".}: WxTextAttrBorders
    mOutline* {.importc: "m_outline".}: WxTextAttrBorders
    mFloatMode* {.importc: "m_floatMode".}: WxTextBoxAttrFloatStyle
    mClearMode* {.importc: "m_clearMode".}: WxTextBoxAttrClearStyle
    mCollapseMode* {.importc: "m_collapseMode".}: WxTextBoxAttrCollapseMode
    mVerticalAlignment* {.importc: "m_verticalAlignment".}: WxTextBoxAttrVerticalAlignment
    mBoxStyleName* {.importc: "m_boxStyleName".}: WxString


proc constructwxTextBoxAttr*(): WxTextBoxAttr {.cdecl, constructor, 
    importcpp: "wxTextBoxAttr(@)", header: wxh.}
proc constructwxTextBoxAttr*(attr: WxTextBoxAttr): WxTextBoxAttr {.cdecl, 
    constructor, importcpp: "wxTextBoxAttr(@)", header: wxh.}
proc init*(this: var WxTextBoxAttr) {.cdecl, importcpp: "Init", header: wxh.}
proc reset*(this: var WxTextBoxAttr) {.cdecl, importcpp: "Reset", header: wxh.}
proc `==`*(this: WxTextBoxAttr; attr: WxTextBoxAttr): bool {.noSideEffect, 
    cdecl, importcpp: "(# == #)", header: wxh.}
proc eqPartial*(this: WxTextBoxAttr; attr: WxTextBoxAttr; weakTest: bool = true): bool {.
    noSideEffect, cdecl, importcpp: "EqPartial", header: wxh.}
proc apply*(this: var WxTextBoxAttr; style: WxTextBoxAttr; 
            compareWith: ptr WxTextBoxAttr = nil): bool {.cdecl, 
    importcpp: "Apply", header: wxh.}
proc collectCommonAttributes*(this: var WxTextBoxAttr; attr: WxTextBoxAttr; 
                              clashingAttr: var WxTextBoxAttr; 
                              absentAttr: var WxTextBoxAttr) {.cdecl, 
    importcpp: "CollectCommonAttributes", header: wxh.}
proc removeStyle*(this: var WxTextBoxAttr; attr: WxTextBoxAttr): bool {.cdecl, 
    importcpp: "RemoveStyle", header: wxh.}
proc setFlags*(this: var WxTextBoxAttr; flags: cint) {.cdecl, 
    importcpp: "SetFlags", header: wxh.}
proc getFlags*(this: WxTextBoxAttr): cint {.noSideEffect, cdecl, 
    importcpp: "GetFlags", header: wxh.}
proc hasFlag*(this: WxTextBoxAttr; flag: WxTextBoxAttrFlags): bool {.
    noSideEffect, cdecl, importcpp: "HasFlag", header: wxh.}
proc removeFlag*(this: var WxTextBoxAttr; flag: WxTextBoxAttrFlags) {.cdecl, 
    importcpp: "RemoveFlag", header: wxh.}
proc addFlag*(this: var WxTextBoxAttr; flag: WxTextBoxAttrFlags) {.cdecl, 
    importcpp: "AddFlag", header: wxh.}
proc isDefault*(this: WxTextBoxAttr): bool {.noSideEffect, cdecl, 
    importcpp: "IsDefault", header: wxh.}
proc getFloatMode*(this: WxTextBoxAttr): WxTextBoxAttrFloatStyle {.noSideEffect, 
    cdecl, importcpp: "GetFloatMode", header: wxh.}
proc setFloatMode*(this: var WxTextBoxAttr; mode: WxTextBoxAttrFloatStyle) {.
    cdecl, importcpp: "SetFloatMode", header: wxh.}
proc hasFloatMode*(this: WxTextBoxAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasFloatMode", header: wxh.}
proc isFloating*(this: WxTextBoxAttr): bool {.noSideEffect, cdecl, 
    importcpp: "IsFloating", header: wxh.}
proc getClearMode*(this: WxTextBoxAttr): WxTextBoxAttrClearStyle {.noSideEffect, 
    cdecl, importcpp: "GetClearMode", header: wxh.}
proc setClearMode*(this: var WxTextBoxAttr; mode: WxTextBoxAttrClearStyle) {.
    cdecl, importcpp: "SetClearMode", header: wxh.}
proc hasClearMode*(this: WxTextBoxAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasClearMode", header: wxh.}
proc getCollapseBorders*(this: WxTextBoxAttr): WxTextBoxAttrCollapseMode {.
    noSideEffect, cdecl, importcpp: "GetCollapseBorders", header: wxh.}
proc setCollapseBorders*(this: var WxTextBoxAttr; 
                         collapse: WxTextBoxAttrCollapseMode) {.cdecl, 
    importcpp: "SetCollapseBorders", header: wxh.}
proc hasCollapseBorders*(this: WxTextBoxAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasCollapseBorders", header: wxh.}
proc getVerticalAlignment*(this: WxTextBoxAttr): WxTextBoxAttrVerticalAlignment {.
    noSideEffect, cdecl, importcpp: "GetVerticalAlignment", header: wxh.}
proc setVerticalAlignment*(this: var WxTextBoxAttr; 
                           verticalAlignment: WxTextBoxAttrVerticalAlignment) {.
    cdecl, importcpp: "SetVerticalAlignment", header: wxh.}
proc hasVerticalAlignment*(this: WxTextBoxAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasVerticalAlignment", header: wxh.}
proc getMargins*(this: var WxTextBoxAttr): var WxTextAttrDimensions {.cdecl, 
    importcpp: "GetMargins", header: wxh.}
proc getMargins*(this: WxTextBoxAttr): WxTextAttrDimensions {.noSideEffect, 
    cdecl, importcpp: "GetMargins", header: wxh.}
proc getLeftMargin*(this: var WxTextBoxAttr): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetLeftMargin", header: wxh.}
proc getLeftMargin*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, 
    cdecl, importcpp: "GetLeftMargin", header: wxh.}
proc getRightMargin*(this: var WxTextBoxAttr): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetRightMargin", header: wxh.}
proc getRightMargin*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, 
    cdecl, importcpp: "GetRightMargin", header: wxh.}
proc getTopMargin*(this: var WxTextBoxAttr): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetTopMargin", header: wxh.}
proc getTopMargin*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, 
    cdecl, importcpp: "GetTopMargin", header: wxh.}
proc getBottomMargin*(this: var WxTextBoxAttr): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetBottomMargin", header: wxh.}
proc getBottomMargin*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, 
    cdecl, importcpp: "GetBottomMargin", header: wxh.}
proc getPosition*(this: var WxTextBoxAttr): var WxTextAttrDimensions {.cdecl, 
    importcpp: "GetPosition", header: wxh.}
proc getPosition*(this: WxTextBoxAttr): WxTextAttrDimensions {.noSideEffect, 
    cdecl, importcpp: "GetPosition", header: wxh.}
proc getLeft*(this: var WxTextBoxAttr): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetLeft", header: wxh.}
proc getLeft*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, cdecl, 
    importcpp: "GetLeft", header: wxh.}
proc getRight*(this: var WxTextBoxAttr): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetRight", header: wxh.}
proc getRight*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, cdecl, 
    importcpp: "GetRight", header: wxh.}
proc getTop*(this: var WxTextBoxAttr): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetTop", header: wxh.}
proc getTop*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, cdecl, 
    importcpp: "GetTop", header: wxh.}
proc getBottom*(this: var WxTextBoxAttr): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetBottom", header: wxh.}
proc getBottom*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, cdecl, 
    importcpp: "GetBottom", header: wxh.}
proc getPadding*(this: var WxTextBoxAttr): var WxTextAttrDimensions {.cdecl, 
    importcpp: "GetPadding", header: wxh.}
proc getPadding*(this: WxTextBoxAttr): WxTextAttrDimensions {.noSideEffect, 
    cdecl, importcpp: "GetPadding", header: wxh.}
proc getLeftPadding*(this: var WxTextBoxAttr): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetLeftPadding", header: wxh.}
proc getLeftPadding*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, 
    cdecl, importcpp: "GetLeftPadding", header: wxh.}
proc getRightPadding*(this: var WxTextBoxAttr): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetRightPadding", header: wxh.}
proc getRightPadding*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, 
    cdecl, importcpp: "GetRightPadding", header: wxh.}
proc getTopPadding*(this: var WxTextBoxAttr): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetTopPadding", header: wxh.}
proc getTopPadding*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, 
    cdecl, importcpp: "GetTopPadding", header: wxh.}
proc getBottomPadding*(this: var WxTextBoxAttr): var WxTextAttrDimension {.
    cdecl, importcpp: "GetBottomPadding", header: wxh.}
proc getBottomPadding*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, 
    cdecl, importcpp: "GetBottomPadding", header: wxh.}
proc getBorder*(this: var WxTextBoxAttr): var WxTextAttrBorders {.cdecl, 
    importcpp: "GetBorder", header: wxh.}
proc getBorder*(this: WxTextBoxAttr): WxTextAttrBorders {.noSideEffect, cdecl, 
    importcpp: "GetBorder", header: wxh.}
proc getLeftBorder*(this: var WxTextBoxAttr): var WxTextAttrBorder {.cdecl, 
    importcpp: "GetLeftBorder", header: wxh.}
proc getLeftBorder*(this: WxTextBoxAttr): WxTextAttrBorder {.noSideEffect, 
    cdecl, importcpp: "GetLeftBorder", header: wxh.}
proc getTopBorder*(this: var WxTextBoxAttr): var WxTextAttrBorder {.cdecl, 
    importcpp: "GetTopBorder", header: wxh.}
proc getTopBorder*(this: WxTextBoxAttr): WxTextAttrBorder {.noSideEffect, cdecl, 
    importcpp: "GetTopBorder", header: wxh.}
proc getRightBorder*(this: var WxTextBoxAttr): var WxTextAttrBorder {.cdecl, 
    importcpp: "GetRightBorder", header: wxh.}
proc getRightBorder*(this: WxTextBoxAttr): WxTextAttrBorder {.noSideEffect, 
    cdecl, importcpp: "GetRightBorder", header: wxh.}
proc getBottomBorder*(this: var WxTextBoxAttr): var WxTextAttrBorder {.cdecl, 
    importcpp: "GetBottomBorder", header: wxh.}
proc getBottomBorder*(this: WxTextBoxAttr): WxTextAttrBorder {.noSideEffect, 
    cdecl, importcpp: "GetBottomBorder", header: wxh.}
proc getOutline*(this: var WxTextBoxAttr): var WxTextAttrBorders {.cdecl, 
    importcpp: "GetOutline", header: wxh.}
proc getOutline*(this: WxTextBoxAttr): WxTextAttrBorders {.noSideEffect, cdecl, 
    importcpp: "GetOutline", header: wxh.}
proc getLeftOutline*(this: var WxTextBoxAttr): var WxTextAttrBorder {.cdecl, 
    importcpp: "GetLeftOutline", header: wxh.}
proc getLeftOutline*(this: WxTextBoxAttr): WxTextAttrBorder {.noSideEffect, 
    cdecl, importcpp: "GetLeftOutline", header: wxh.}
proc getTopOutline*(this: var WxTextBoxAttr): var WxTextAttrBorder {.cdecl, 
    importcpp: "GetTopOutline", header: wxh.}
proc getTopOutline*(this: WxTextBoxAttr): WxTextAttrBorder {.noSideEffect, 
    cdecl, importcpp: "GetTopOutline", header: wxh.}
proc getRightOutline*(this: var WxTextBoxAttr): var WxTextAttrBorder {.cdecl, 
    importcpp: "GetRightOutline", header: wxh.}
proc getRightOutline*(this: WxTextBoxAttr): WxTextAttrBorder {.noSideEffect, 
    cdecl, importcpp: "GetRightOutline", header: wxh.}
proc getBottomOutline*(this: var WxTextBoxAttr): var WxTextAttrBorder {.cdecl, 
    importcpp: "GetBottomOutline", header: wxh.}
proc getBottomOutline*(this: WxTextBoxAttr): WxTextAttrBorder {.noSideEffect, 
    cdecl, importcpp: "GetBottomOutline", header: wxh.}
proc getSize*(this: var WxTextBoxAttr): var WxTextAttrSize {.cdecl, 
    importcpp: "GetSize", header: wxh.}
proc getSize*(this: WxTextBoxAttr): WxTextAttrSize {.noSideEffect, cdecl, 
    importcpp: "GetSize", header: wxh.}
proc getMinSize*(this: var WxTextBoxAttr): var WxTextAttrSize {.cdecl, 
    importcpp: "GetMinSize", header: wxh.}
proc getMinSize*(this: WxTextBoxAttr): WxTextAttrSize {.noSideEffect, cdecl, 
    importcpp: "GetMinSize", header: wxh.}
proc getMaxSize*(this: var WxTextBoxAttr): var WxTextAttrSize {.cdecl, 
    importcpp: "GetMaxSize", header: wxh.}
proc getMaxSize*(this: WxTextBoxAttr): WxTextAttrSize {.noSideEffect, cdecl, 
    importcpp: "GetMaxSize", header: wxh.}
proc setSize*(this: var WxTextBoxAttr; sz: WxTextAttrSize) {.cdecl, 
    importcpp: "SetSize", header: wxh.}
proc setMinSize*(this: var WxTextBoxAttr; sz: WxTextAttrSize) {.cdecl, 
    importcpp: "SetMinSize", header: wxh.}
proc setMaxSize*(this: var WxTextBoxAttr; sz: WxTextAttrSize) {.cdecl, 
    importcpp: "SetMaxSize", header: wxh.}
proc getWidth*(this: var WxTextBoxAttr): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetWidth", header: wxh.}
proc getWidth*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, cdecl, 
    importcpp: "GetWidth", header: wxh.}
proc getHeight*(this: var WxTextBoxAttr): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetHeight", header: wxh.}
proc getHeight*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, cdecl, 
    importcpp: "GetHeight", header: wxh.}
proc getBoxStyleName*(this: WxTextBoxAttr): WxString {.noSideEffect, cdecl, 
    importcpp: "GetBoxStyleName", header: wxh.}
proc setBoxStyleName*(this: var WxTextBoxAttr; name: WxString) {.cdecl, 
    importcpp: "SetBoxStyleName", header: wxh.}
proc hasBoxStyleName*(this: WxTextBoxAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasBoxStyleName", header: wxh.}

type 
  WxRichTextAttr* {.importcpp: "wxRichTextAttr", header: wxh.} = object of WxTextAttr
    mTextBoxAttr* {.importc: "m_textBoxAttr".}: WxTextBoxAttr


proc constructwxRichTextAttr*(attr: WxTextAttr): WxRichTextAttr {.cdecl, 
    constructor, importcpp: "wxRichTextAttr(@)", header: wxh.}
proc constructwxRichTextAttr*(attr: WxRichTextAttr): WxRichTextAttr {.cdecl, 
    constructor, importcpp: "wxRichTextAttr(@)", header: wxh.}
proc constructwxRichTextAttr*(): WxRichTextAttr {.cdecl, constructor, 
    importcpp: "wxRichTextAttr(@)", header: wxh.}
proc copy*(this: var WxRichTextAttr; attr: WxRichTextAttr) {.cdecl, 
    importcpp: "Copy", header: wxh.}
proc `==`*(this: WxRichTextAttr; attr: WxRichTextAttr): bool {.noSideEffect, 
    cdecl, importcpp: "(# == #)", header: wxh.}
proc eqPartial*(this: WxRichTextAttr; attr: WxRichTextAttr; 
                weakTest: bool = true): bool {.noSideEffect, cdecl, 
    importcpp: "EqPartial", header: wxh.}
proc apply*(this: var WxRichTextAttr; style: WxRichTextAttr; 
            compareWith: ptr WxRichTextAttr = nil): bool {.cdecl, 
    importcpp: "Apply", header: wxh.}
proc collectCommonAttributes*(this: var WxRichTextAttr; attr: WxRichTextAttr; 
                              clashingAttr: var WxRichTextAttr; 
                              absentAttr: var WxRichTextAttr) {.cdecl, 
    importcpp: "CollectCommonAttributes", header: wxh.}
proc removeStyle*(this: var WxRichTextAttr; attr: WxRichTextAttr): bool {.cdecl, 
    importcpp: "RemoveStyle", header: wxh.}
proc getTextBoxAttr*(this: var WxRichTextAttr): var WxTextBoxAttr {.cdecl, 
    importcpp: "GetTextBoxAttr", header: wxh.}
proc getTextBoxAttr*(this: WxRichTextAttr): WxTextBoxAttr {.noSideEffect, cdecl, 
    importcpp: "GetTextBoxAttr", header: wxh.}
proc setTextBoxAttr*(this: var WxRichTextAttr; attr: WxTextBoxAttr) {.cdecl, 
    importcpp: "SetTextBoxAttr", header: wxh.}
proc isDefault*(this: WxRichTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "IsDefault", header: wxh.}

type 
  WxRichTextProperties* {.importcpp: "wxRichTextProperties", header: wxh.} = object of WxObject
  

proc constructwxRichTextProperties*(): WxRichTextProperties {.cdecl, 
    constructor, importcpp: "wxRichTextProperties(@)", header: wxh.}
proc constructwxRichTextProperties*(props: WxRichTextProperties): WxRichTextProperties {.
    cdecl, constructor, importcpp: "wxRichTextProperties(@)", header: wxh.}
proc `==`*(this: WxRichTextProperties; props: WxRichTextProperties): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", header: wxh.}
proc copy*(this: var WxRichTextProperties; props: WxRichTextProperties) {.cdecl, 
    importcpp: "Copy", header: wxh.}
proc `[]`*(this: WxRichTextProperties; idx: csize): WxVariant {.noSideEffect, 
    cdecl, importcpp: "#[@]", header: wxh.}
proc `[]`*(this: var WxRichTextProperties; idx: csize): var WxVariant {.cdecl, 
    importcpp: "#[@]", header: wxh.}
proc clear*(this: var WxRichTextProperties) {.cdecl, importcpp: "Clear", 
    header: wxh.}
proc getPropertyNames*(this: WxRichTextProperties): WxArrayString {.
    noSideEffect, cdecl, importcpp: "GetPropertyNames", header: wxh.}
proc getCount*(this: WxRichTextProperties): csize {.noSideEffect, cdecl, 
    importcpp: "GetCount", header: wxh.}
proc hasProperty*(this: WxRichTextProperties; name: WxString): bool {.
    noSideEffect, cdecl, importcpp: "HasProperty", header: wxh.}
proc find*(this: WxRichTextProperties; name: WxString): cint {.noSideEffect, 
    cdecl, importcpp: "Find", header: wxh.}
proc remove*(this: var WxRichTextProperties; name: WxString): bool {.cdecl, 
    importcpp: "Remove", header: wxh.}
proc getProperty*(this: WxRichTextProperties; name: WxString): WxVariant {.
    noSideEffect, cdecl, importcpp: "GetProperty", header: wxh.}
proc findOrCreateProperty*(this: var WxRichTextProperties; name: WxString): ptr WxVariant {.
    cdecl, importcpp: "FindOrCreateProperty", header: wxh.}
proc getPropertyString*(this: WxRichTextProperties; name: WxString): WxString {.
    noSideEffect, cdecl, importcpp: "GetPropertyString", header: wxh.}
proc getPropertyLong*(this: WxRichTextProperties; name: WxString): clong {.
    noSideEffect, cdecl, importcpp: "GetPropertyLong", header: wxh.}
proc getPropertyBool*(this: WxRichTextProperties; name: WxString): bool {.
    noSideEffect, cdecl, importcpp: "GetPropertyBool", header: wxh.}
proc getPropertyDouble*(this: WxRichTextProperties; name: WxString): cdouble {.
    noSideEffect, cdecl, importcpp: "GetPropertyDouble", header: wxh.}
proc setProperty*(this: var WxRichTextProperties; variant: WxVariant) {.cdecl, 
    importcpp: "SetProperty", header: wxh.}
proc setProperty*(this: var WxRichTextProperties; name: WxString; 
                  variant: WxVariant) {.cdecl, importcpp: "SetProperty", 
                                        header: wxh.}
proc setProperty*(this: var WxRichTextProperties; name: WxString; 
                  value: WxString) {.cdecl, importcpp: "SetProperty", 
                                     header: wxh.}
proc setProperty*(this: var WxRichTextProperties; name: WxString; 
                  value: ptr WxChar) {.cdecl, importcpp: "SetProperty", 
                                       header: wxh.}
proc setProperty*(this: var WxRichTextProperties; name: WxString; value: clong) {.
    cdecl, importcpp: "SetProperty", header: wxh.}
proc setProperty*(this: var WxRichTextProperties; name: WxString; value: cdouble) {.
    cdecl, importcpp: "SetProperty", header: wxh.}
proc setProperty*(this: var WxRichTextProperties; name: WxString; value: bool) {.
    cdecl, importcpp: "SetProperty", header: wxh.}
proc removeProperties*(this: var WxRichTextProperties; 
                       properties: WxRichTextProperties) {.cdecl, 
    importcpp: "RemoveProperties", header: wxh.}
proc mergeProperties*(this: var WxRichTextProperties; 
                      properties: WxRichTextProperties) {.cdecl, 
    importcpp: "MergeProperties", header: wxh.}

type 
  WxRichTextFontTable* {.importcpp: "wxRichTextFontTable", header: wxh.} = object of WxObject
  

proc constructwxRichTextFontTable*(): WxRichTextFontTable {.cdecl, constructor, 
    importcpp: "wxRichTextFontTable(@)", header: wxh.}
proc constructwxRichTextFontTable*(table: WxRichTextFontTable): WxRichTextFontTable {.
    cdecl, constructor, importcpp: "wxRichTextFontTable(@)", header: wxh.}
proc destroywxRichTextFontTable*(this: var WxRichTextFontTable) {.cdecl, 
    importcpp: "#.~wxRichTextFontTable()", header: wxh.}
proc isOk*(this: WxRichTextFontTable): bool {.noSideEffect, cdecl, 
    importcpp: "IsOk", header: wxh.}
proc findFont*(this: var WxRichTextFontTable; fontSpec: WxRichTextAttr): WxFont {.
    cdecl, importcpp: "FindFont", header: wxh.}
proc clear*(this: var WxRichTextFontTable) {.cdecl, importcpp: "Clear", 
    header: wxh.}
proc `==`*(this: WxRichTextFontTable; table: WxRichTextFontTable): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", header: wxh.}
proc setFontScale*(this: var WxRichTextFontTable; fontScale: cdouble) {.cdecl, 
    importcpp: "SetFontScale", header: wxh.}

type 
  WxRichTextRange* {.importcpp: "wxRichTextRange", header: wxh.} = object 
  

proc constructwxRichTextRange*(): WxRichTextRange {.cdecl, constructor, 
    importcpp: "wxRichTextRange(@)", header: wxh.}
proc constructwxRichTextRange*(start: clong; `end`: clong): WxRichTextRange {.
    cdecl, constructor, importcpp: "wxRichTextRange(@)", header: wxh.}
proc constructwxRichTextRange*(range: WxRichTextRange): WxRichTextRange {.cdecl, 
    constructor, importcpp: "wxRichTextRange(@)", header: wxh.}
proc destroywxRichTextRange*(this: var WxRichTextRange) {.cdecl, 
    importcpp: "#.~wxRichTextRange()", header: wxh.}
proc `==`*(this: WxRichTextRange; range: WxRichTextRange): bool {.noSideEffect, 
    cdecl, importcpp: "(# == #)", header: wxh.}
proc `-`*(this: WxRichTextRange; range: WxRichTextRange): WxRichTextRange {.
    noSideEffect, cdecl, importcpp: "(# - #)", header: wxh.}
proc `+`*(this: WxRichTextRange; range: WxRichTextRange): WxRichTextRange {.
    noSideEffect, cdecl, importcpp: "(# + #)", header: wxh.}
proc setRange*(this: var WxRichTextRange; start: clong; `end`: clong) {.cdecl, 
    importcpp: "SetRange", header: wxh.}
proc setStart*(this: var WxRichTextRange; start: clong) {.cdecl, 
    importcpp: "SetStart", header: wxh.}
proc getStart*(this: WxRichTextRange): clong {.noSideEffect, cdecl, 
    importcpp: "GetStart", header: wxh.}
proc setEnd*(this: var WxRichTextRange; `end`: clong) {.cdecl, 
    importcpp: "SetEnd", header: wxh.}
proc getEnd*(this: WxRichTextRange): clong {.noSideEffect, cdecl, 
    importcpp: "GetEnd", header: wxh.}
proc isOutside*(this: WxRichTextRange; range: WxRichTextRange): bool {.
    noSideEffect, cdecl, importcpp: "IsOutside", header: wxh.}
proc isWithin*(this: WxRichTextRange; range: WxRichTextRange): bool {.
    noSideEffect, cdecl, importcpp: "IsWithin", header: wxh.}
proc contains*(this: WxRichTextRange; pos: clong): bool {.noSideEffect, cdecl, 
    importcpp: "Contains", header: wxh.}
proc limitTo*(this: var WxRichTextRange; range: WxRichTextRange): bool {.cdecl, 
    importcpp: "LimitTo", header: wxh.}
proc getLength*(this: WxRichTextRange): clong {.noSideEffect, cdecl, 
    importcpp: "GetLength", header: wxh.}
proc swap*(this: var WxRichTextRange) {.cdecl, importcpp: "Swap", header: wxh.}
proc toInternal*(this: WxRichTextRange): WxRichTextRange {.noSideEffect, cdecl, 
    importcpp: "ToInternal", header: wxh.}
proc fromInternal*(this: WxRichTextRange): WxRichTextRange {.noSideEffect, 
    cdecl, importcpp: "FromInternal", header: wxh.}
template wxRICHTEXT_ALL*(): untyped = 
  constructWxRichTextRange(- 2, - 2)

template wxRICHTEXT_NONE*(): untyped = 
  constructWxRichTextRange(- 1, - 1)

template wxRICHTEXT_NO_SELECTION*(): untyped = 
  constructWxRichTextRange(- 2, - 2)


type 
  WxRichTextSelection* {.importcpp: "wxRichTextSelection", header: wxh.} = object 
    mRanges* {.importc: "m_ranges".}: WxRichTextRangeArray
    mContainer* {.importc: "m_container".}: ptr WxRichTextParagraphLayoutBox
  WxRichTextParagraphLayoutBox* {.importcpp: "wxRichTextParagraphLayoutBox", 
                                  header: wxh.} = object of WxRichTextCompositeObject
  WxRichTextCompositeObject* {.importcpp: "wxRichTextCompositeObject", 
                               header: wxh.} = object of WxRichTextObject
  WxRichTextObject* {.importcpp: "wxRichTextObject", header: wxh.} = object of WxObject


proc constructwxRichTextSelection*(sel: WxRichTextSelection): WxRichTextSelection {.
    cdecl, constructor, importcpp: "wxRichTextSelection(@)", header: wxh.}
proc constructwxRichTextSelection*(range: WxRichTextRange; 
                                   container: ptr WxRichTextParagraphLayoutBox): WxRichTextSelection {.
    cdecl, constructor, importcpp: "wxRichTextSelection(@)", header: wxh.}
proc constructwxRichTextSelection*(): WxRichTextSelection {.cdecl, constructor, 
    importcpp: "wxRichTextSelection(@)", header: wxh.}
proc reset*(this: var WxRichTextSelection) {.cdecl, importcpp: "Reset", 
    header: wxh.}
proc set*(this: var WxRichTextSelection; range: WxRichTextRange; 
          container: ptr WxRichTextParagraphLayoutBox) {.cdecl, 
    importcpp: "Set", header: wxh.}
proc add*(this: var WxRichTextSelection; range: WxRichTextRange) {.cdecl, 
    importcpp: "Add", header: wxh.}
proc set*(this: var WxRichTextSelection; ranges: WxRichTextRangeArray; 
          container: ptr WxRichTextParagraphLayoutBox) {.cdecl, 
    importcpp: "Set", header: wxh.}
proc copy*(this: var WxRichTextSelection; sel: WxRichTextSelection) {.cdecl, 
    importcpp: "Copy", header: wxh.}
proc `==`*(this: WxRichTextSelection; sel: WxRichTextSelection): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", header: wxh.}
proc `[]`*(this: WxRichTextSelection; i: csize): WxRichTextRange {.noSideEffect, 
    cdecl, importcpp: "#[@]", header: wxh.}
proc getRanges*(this: var WxRichTextSelection): var WxRichTextRangeArray {.
    cdecl, importcpp: "GetRanges", header: wxh.}
proc getRanges*(this: WxRichTextSelection): WxRichTextRangeArray {.noSideEffect, 
    cdecl, importcpp: "GetRanges", header: wxh.}
proc setRanges*(this: var WxRichTextSelection; ranges: WxRichTextRangeArray) {.
    cdecl, importcpp: "SetRanges", header: wxh.}
proc getCount*(this: WxRichTextSelection): csize {.noSideEffect, cdecl, 
    importcpp: "GetCount", header: wxh.}
proc getRange*(this: WxRichTextSelection; i: csize): WxRichTextRange {.
    noSideEffect, cdecl, importcpp: "GetRange", header: wxh.}
proc getRange*(this: WxRichTextSelection): WxRichTextRange {.noSideEffect, 
    cdecl, importcpp: "GetRange", header: wxh.}
proc setRange*(this: var WxRichTextSelection; range: WxRichTextRange) {.cdecl, 
    importcpp: "SetRange", header: wxh.}
proc getContainer*(this: WxRichTextSelection): ptr WxRichTextParagraphLayoutBox {.
    noSideEffect, cdecl, importcpp: "GetContainer", header: wxh.}
proc setContainer*(this: var WxRichTextSelection; 
                   container: ptr WxRichTextParagraphLayoutBox) {.cdecl, 
    importcpp: "SetContainer", header: wxh.}
proc isValid*(this: WxRichTextSelection): bool {.noSideEffect, cdecl, 
    importcpp: "IsValid", header: wxh.}
proc getSelectionForObject*(this: WxRichTextSelection; obj: ptr WxRichTextObject): WxRichTextRangeArray {.
    noSideEffect, cdecl, importcpp: "GetSelectionForObject", header: wxh.}
proc withinSelection*(this: WxRichTextSelection; pos: clong; 
                      obj: ptr WxRichTextObject): bool {.noSideEffect, cdecl, 
    importcpp: "WithinSelection", header: wxh.}
proc withinSelection*(this: WxRichTextSelection; pos: clong): bool {.
    noSideEffect, cdecl, importcpp: "WithinSelection", header: wxh.}
proc withinSelection*(pos: clong; ranges: WxRichTextRangeArray): bool {.cdecl, 
    importcpp: "wxRichTextSelection::WithinSelection(@)", header: wxh.}
proc withinSelection*(range: WxRichTextRange; ranges: WxRichTextRangeArray): bool {.
    cdecl, importcpp: "wxRichTextSelection::WithinSelection(@)", header: wxh.}

type 
  WxRichTextDrawingContext* {.importcpp: "wxRichTextDrawingContext", header: wxh.} = object of WxObject
    mBuffer* {.importc: "m_buffer".}: ptr WxRichTextBuffer
    mEnableVirtualAttributes* {.importc: "m_enableVirtualAttributes".}: bool
  WxRichTextBuffer* {.importcpp: "wxRichTextBuffer", header: wxh.} = object of WxRichTextParagraphLayoutBox
  WxRichTextPlainText* {.importcpp: "wxRichTextPlainText", header: wxh.} = object of WxRichTextObject


proc constructwxRichTextDrawingContext*(buffer: ptr WxRichTextBuffer): WxRichTextDrawingContext {.
    cdecl, constructor, importcpp: "wxRichTextDrawingContext(@)", header: wxh.}
proc init*(this: var WxRichTextDrawingContext) {.cdecl, importcpp: "Init", 
    header: wxh.}
proc hasVirtualAttributes*(this: WxRichTextDrawingContext; 
                           obj: ptr WxRichTextObject): bool {.noSideEffect, 
    cdecl, importcpp: "HasVirtualAttributes", header: wxh.}
proc getVirtualAttributes*(this: WxRichTextDrawingContext; 
                           obj: ptr WxRichTextObject): WxRichTextAttr {.
    noSideEffect, cdecl, importcpp: "GetVirtualAttributes", header: wxh.}
proc applyVirtualAttributes*(this: WxRichTextDrawingContext; 
                             attr: var WxRichTextAttr; obj: ptr WxRichTextObject): bool {.
    noSideEffect, cdecl, importcpp: "ApplyVirtualAttributes", header: wxh.}
proc getVirtualSubobjectAttributesCount*(this: WxRichTextDrawingContext; 
    obj: ptr WxRichTextObject): cint {.noSideEffect, cdecl, importcpp: "GetVirtualSubobjectAttributesCount", 
                                       header: wxh.}
proc hasVirtualText*(this: WxRichTextDrawingContext; 
                     obj: ptr WxRichTextPlainText): bool {.noSideEffect, cdecl, 
    importcpp: "HasVirtualText", header: wxh.}
proc getVirtualText*(this: WxRichTextDrawingContext; 
                     obj: ptr WxRichTextPlainText; text: var WxString): bool {.
    noSideEffect, cdecl, importcpp: "GetVirtualText", header: wxh.}
proc enableVirtualAttributes*(this: var WxRichTextDrawingContext; b: bool) {.
    cdecl, importcpp: "EnableVirtualAttributes", header: wxh.}
proc getVirtualAttributesEnabled*(this: WxRichTextDrawingContext): bool {.
    noSideEffect, cdecl, importcpp: "GetVirtualAttributesEnabled", header: wxh.}


proc constructwxRichTextObject*(parent: ptr WxRichTextObject = nil): WxRichTextObject {.
    cdecl, constructor, importcpp: "wxRichTextObject(@)", header: wxh.}
proc destroywxRichTextObject*(this: var WxRichTextObject) {.cdecl, 
    importcpp: "#.~wxRichTextObject()", header: wxh.}
proc draw*(this: var WxRichTextObject; dc: var WxDC; 
           context: var WxRichTextDrawingContext; range: WxRichTextRange; 
           selection: WxRichTextSelection; rect: WxRect; descent: cint; 
           style: cint): bool {.cdecl, importcpp: "Draw", header: wxh.}
proc layout*(this: var WxRichTextObject; dc: var WxDC; 
             context: var WxRichTextDrawingContext; rect: WxRect; 
             parentRect: WxRect; style: cint): bool {.cdecl, 
    importcpp: "Layout", header: wxh.}
proc hitTest*(this: var WxRichTextObject; dc: var WxDC; 
              context: var WxRichTextDrawingContext; pt: WxPoint; 
              textPosition: var clong; obj: ptr ptr WxRichTextObject; 
              contextObj: ptr ptr WxRichTextObject; flags: cint = 0): cint {.
    cdecl, importcpp: "HitTest", header: wxh.}
proc findPosition*(this: var WxRichTextObject; dc: var WxDC; 
                   context: var WxRichTextDrawingContext; index: clong; 
                   pt: var WxPoint; height: ptr cint; forceLineStart: bool): bool {.
    cdecl, importcpp: "FindPosition", header: wxh.}
proc getBestSize*(this: WxRichTextObject): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetBestSize", header: wxh.}
proc getRangeSize*(this: WxRichTextObject; range: WxRichTextRange; 
                   size: var WxSize; descent: var cint; dc: var WxDC; 
                   context: var WxRichTextDrawingContext; flags: cint; 
                   position: WxPoint = constructWxPoint(0,0); 
                   parentSize: WxSize = wxDefaultSize; 
                   partialExtents: ptr WxArrayInt = nil): bool {.noSideEffect, 
    cdecl, importcpp: "GetRangeSize", header: wxh.}
proc doSplit*(this: var WxRichTextObject; pos: clong): ptr WxRichTextObject {.
    cdecl, importcpp: "DoSplit", header: wxh.}
proc calculateRange*(this: var WxRichTextObject; start: clong; `end`: var clong) {.
    cdecl, importcpp: "CalculateRange", header: wxh.}
proc deleteRange*(this: var WxRichTextObject; range: WxRichTextRange): bool {.
    cdecl, importcpp: "DeleteRange", header: wxh.}
proc isEmpty*(this: WxRichTextObject): bool {.noSideEffect, cdecl, 
    importcpp: "IsEmpty", header: wxh.}
proc isFloatable*(this: WxRichTextObject): bool {.noSideEffect, cdecl, 
    importcpp: "IsFloatable", header: wxh.}
proc isFloating*(this: WxRichTextObject): bool {.noSideEffect, cdecl, 
    importcpp: "IsFloating", header: wxh.}
proc getFloatDirection*(this: WxRichTextObject): cint {.noSideEffect, cdecl, 
    importcpp: "GetFloatDirection", header: wxh.}
proc getTextForRange*(this: WxRichTextObject; range: WxRichTextRange): WxString {.
    noSideEffect, cdecl, importcpp: "GetTextForRange", header: wxh.}
proc canMerge*(this: WxRichTextObject; `object`: ptr WxRichTextObject; 
               context: var WxRichTextDrawingContext): bool {.noSideEffect, 
    cdecl, importcpp: "CanMerge", header: wxh.}
proc merge*(this: var WxRichTextObject; `object`: ptr WxRichTextObject; 
            context: var WxRichTextDrawingContext): bool {.cdecl, 
    importcpp: "Merge", header: wxh.}
proc canSplit*(this: WxRichTextObject; context: var WxRichTextDrawingContext): bool {.
    noSideEffect, cdecl, importcpp: "CanSplit", header: wxh.}
proc split*(this: var WxRichTextObject; context: var WxRichTextDrawingContext): ptr WxRichTextObject {.
    cdecl, importcpp: "Split", header: wxh.}
proc canEditProperties*(this: WxRichTextObject): bool {.noSideEffect, cdecl, 
    importcpp: "CanEditProperties", header: wxh.}
proc editProperties*(this: var WxRichTextObject; parent: ptr WxWindow; 
                     buffer: ptr WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EditProperties", header: wxh.}
proc getPropertiesMenuLabel*(this: WxRichTextObject): WxString {.noSideEffect, 
    cdecl, importcpp: "GetPropertiesMenuLabel", header: wxh.}
proc acceptsFocus*(this: WxRichTextObject): bool {.noSideEffect, cdecl, 
    importcpp: "AcceptsFocus", header: wxh.}
proc usesParagraphAttributes*(this: WxRichTextObject): bool {.noSideEffect, 
    cdecl, importcpp: "UsesParagraphAttributes", header: wxh.}
proc getXMLNodeName*(this: WxRichTextObject): WxString {.noSideEffect, cdecl, 
    importcpp: "GetXMLNodeName", header: wxh.}
proc invalidate*(this: var WxRichTextObject; 
                 invalidRange: WxRichTextRange = wxRICHTEXT_ALL) {.cdecl, 
    importcpp: "Invalidate", header: wxh.}
proc handlesChildSelections*(this: WxRichTextObject): bool {.noSideEffect, 
    cdecl, importcpp: "HandlesChildSelections", header: wxh.}
proc getSelection*(this: WxRichTextObject; start: clong; `end`: clong): WxRichTextSelection {.
    noSideEffect, cdecl, importcpp: "GetSelection", header: wxh.}
proc getCachedSize*(this: WxRichTextObject): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetCachedSize", header: wxh.}
proc setCachedSize*(this: var WxRichTextObject; sz: WxSize) {.cdecl, 
    importcpp: "SetCachedSize", header: wxh.}
proc getMaxSize*(this: WxRichTextObject): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetMaxSize", header: wxh.}
proc setMaxSize*(this: var WxRichTextObject; sz: WxSize) {.cdecl, 
    importcpp: "SetMaxSize", header: wxh.}
proc getMinSize*(this: WxRichTextObject): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetMinSize", header: wxh.}
proc setMinSize*(this: var WxRichTextObject; sz: WxSize) {.cdecl, 
    importcpp: "SetMinSize", header: wxh.}
proc getNaturalSize*(this: WxRichTextObject): WxTextAttrSize {.noSideEffect, 
    cdecl, importcpp: "GetNaturalSize", header: wxh.}
proc getPosition*(this: WxRichTextObject): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetPosition", header: wxh.}
proc setPosition*(this: var WxRichTextObject; pos: WxPoint) {.cdecl, 
    importcpp: "SetPosition", header: wxh.}
proc getAbsolutePosition*(this: WxRichTextObject): WxPoint {.noSideEffect, 
    cdecl, importcpp: "GetAbsolutePosition", header: wxh.}
proc getRect*(this: WxRichTextObject): WxRect {.noSideEffect, cdecl, 
    importcpp: "GetRect", header: wxh.}
proc setRange*(this: var WxRichTextObject; range: WxRichTextRange) {.cdecl, 
    importcpp: "SetRange", header: wxh.}
proc getRange*(this: WxRichTextObject): WxRichTextRange {.noSideEffect, cdecl, 
    importcpp: "GetRange", header: wxh.}
proc getRange*(this: var WxRichTextObject): var WxRichTextRange {.cdecl, 
    importcpp: "GetRange", header: wxh.}
proc setOwnRange*(this: var WxRichTextObject; range: WxRichTextRange) {.cdecl, 
    importcpp: "SetOwnRange", header: wxh.}
proc getOwnRange*(this: WxRichTextObject): WxRichTextRange {.noSideEffect, 
    cdecl, importcpp: "GetOwnRange", header: wxh.}
proc getOwnRange*(this: var WxRichTextObject): var WxRichTextRange {.cdecl, 
    importcpp: "GetOwnRange", header: wxh.}
proc getOwnRangeIfTopLevel*(this: WxRichTextObject): WxRichTextRange {.
    noSideEffect, cdecl, importcpp: "GetOwnRangeIfTopLevel", header: wxh.}
proc isComposite*(this: WxRichTextObject): bool {.noSideEffect, cdecl, 
    importcpp: "IsComposite", header: wxh.}
proc isAtomic*(this: WxRichTextObject): bool {.noSideEffect, cdecl, 
    importcpp: "IsAtomic", header: wxh.}
proc getParent*(this: WxRichTextObject): ptr WxRichTextObject {.noSideEffect, 
    cdecl, importcpp: "GetParent", header: wxh.}
proc setParent*(this: var WxRichTextObject; parent: ptr WxRichTextObject) {.
    cdecl, importcpp: "SetParent", header: wxh.}
proc getContainer*(this: WxRichTextObject): ptr WxRichTextParagraphLayoutBox {.
    noSideEffect, cdecl, importcpp: "GetContainer", header: wxh.}
proc getParentContainer*(this: WxRichTextObject): ptr WxRichTextParagraphLayoutBox {.
    noSideEffect, cdecl, importcpp: "GetParentContainer", header: wxh.}
proc setMargins*(this: var WxRichTextObject; margin: cint) {.cdecl, 
    importcpp: "SetMargins", header: wxh.}
proc setMargins*(this: var WxRichTextObject; leftMargin: cint; 
                 rightMargin: cint; topMargin: cint; bottomMargin: cint) {.
    cdecl, importcpp: "SetMargins", header: wxh.}
proc getLeftMargin*(this: WxRichTextObject): cint {.noSideEffect, cdecl, 
    importcpp: "GetLeftMargin", header: wxh.}
proc getRightMargin*(this: WxRichTextObject): cint {.noSideEffect, cdecl, 
    importcpp: "GetRightMargin", header: wxh.}
proc getTopMargin*(this: WxRichTextObject): cint {.noSideEffect, cdecl, 
    importcpp: "GetTopMargin", header: wxh.}
proc getBottomMargin*(this: WxRichTextObject): cint {.noSideEffect, cdecl, 
    importcpp: "GetBottomMargin", header: wxh.}
proc getAvailableContentArea*(this: WxRichTextObject; dc: var WxDC; 
                              context: var WxRichTextDrawingContext; 
                              outerRect: WxRect): WxRect {.noSideEffect, cdecl, 
    importcpp: "GetAvailableContentArea", header: wxh.}
proc layoutToBestSize*(this: var WxRichTextObject; dc: var WxDC; 
                       context: var WxRichTextDrawingContext; 
                       buffer: ptr WxRichTextBuffer; parentAttr: WxRichTextAttr; 
                       attr: WxRichTextAttr; availableParentSpace: WxRect; 
                       availableContainerSpace: WxRect; style: cint): bool {.
    cdecl, importcpp: "LayoutToBestSize", header: wxh.}
proc adjustAttributes*(this: var WxRichTextObject; attr: var WxRichTextAttr; 
                       context: var WxRichTextDrawingContext): bool {.cdecl, 
    importcpp: "AdjustAttributes", header: wxh.}
proc setAttributes*(this: var WxRichTextObject; attr: WxRichTextAttr) {.cdecl, 
    importcpp: "SetAttributes", header: wxh.}
proc getAttributes*(this: WxRichTextObject): WxRichTextAttr {.noSideEffect, 
    cdecl, importcpp: "GetAttributes", header: wxh.}
proc getAttributes*(this: var WxRichTextObject): var WxRichTextAttr {.cdecl, 
    importcpp: "GetAttributes", header: wxh.}
proc getProperties*(this: var WxRichTextObject): var WxRichTextProperties {.
    cdecl, importcpp: "GetProperties", header: wxh.}
proc getProperties*(this: WxRichTextObject): WxRichTextProperties {.
    noSideEffect, cdecl, importcpp: "GetProperties", header: wxh.}
proc setProperties*(this: var WxRichTextObject; props: WxRichTextProperties) {.
    cdecl, importcpp: "SetProperties", header: wxh.}
proc setDescent*(this: var WxRichTextObject; descent: cint) {.cdecl, 
    importcpp: "SetDescent", header: wxh.}
proc getDescent*(this: WxRichTextObject): cint {.noSideEffect, cdecl, 
    importcpp: "GetDescent", header: wxh.}
proc getBuffer*(this: WxRichTextObject): ptr WxRichTextBuffer {.noSideEffect, 
    cdecl, importcpp: "GetBuffer", header: wxh.}
proc setName*(this: var WxRichTextObject; name: WxString) {.cdecl, 
    importcpp: "SetName", header: wxh.}
proc getName*(this: WxRichTextObject): WxString {.noSideEffect, cdecl, 
    importcpp: "GetName", header: wxh.}
proc isTopLevel*(this: WxRichTextObject): bool {.noSideEffect, cdecl, 
    importcpp: "IsTopLevel", header: wxh.}
proc isShown*(this: WxRichTextObject): bool {.noSideEffect, cdecl, 
    importcpp: "IsShown", header: wxh.}
proc show*(this: var WxRichTextObject; show: bool) {.cdecl, importcpp: "Show", 
    header: wxh.}
proc clone*(this: WxRichTextObject): ptr WxRichTextObject {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}
proc copy*(this: var WxRichTextObject; obj: WxRichTextObject) {.cdecl, 
    importcpp: "Copy", header: wxh.}
proc reference*(this: var WxRichTextObject) {.cdecl, importcpp: "Reference", 
    header: wxh.}
proc dereference*(this: var WxRichTextObject) {.cdecl, importcpp: "Dereference", 
    header: wxh.}
proc move*(this: var WxRichTextObject; pt: WxPoint) {.cdecl, importcpp: "Move", 
    header: wxh.}
proc convertTenthsMMToPixels*(this: WxRichTextObject; dc: var WxDC; units: cint): cint {.
    noSideEffect, cdecl, importcpp: "ConvertTenthsMMToPixels", header: wxh.}
proc convertTenthsMMToPixels*(ppi: cint; units: cint; scale: cdouble = 1.0): cint {.
    cdecl, importcpp: "wxRichTextObject::ConvertTenthsMMToPixels(@)", 
    header: wxh.}
proc convertPixelsToTenthsMM*(this: WxRichTextObject; dc: var WxDC; pixels: cint): cint {.
    noSideEffect, cdecl, importcpp: "ConvertPixelsToTenthsMM", header: wxh.}
proc convertPixelsToTenthsMM*(ppi: cint; pixels: cint; scale: cdouble = 1.0): cint {.
    cdecl, importcpp: "wxRichTextObject::ConvertPixelsToTenthsMM(@)", 
    header: wxh.}
proc drawBoxAttributes*(dc: var WxDC; buffer: ptr WxRichTextBuffer; 
                        attr: WxRichTextAttr; boxRect: WxRect; flags: cint = 0; 
                        obj: ptr WxRichTextObject = nil): bool {.cdecl, 
    importcpp: "wxRichTextObject::DrawBoxAttributes(@)", header: wxh.}
proc drawBorder*(dc: var WxDC; buffer: ptr WxRichTextBuffer; 
                 attr: WxTextAttrBorders; rect: WxRect; flags: cint = 0): bool {.
    cdecl, importcpp: "wxRichTextObject::DrawBorder(@)", header: wxh.}
proc getBoxRects*(dc: var WxDC; buffer: ptr WxRichTextBuffer; 
                  attr: WxRichTextAttr; marginRect: var WxRect; 
                  borderRect: var WxRect; contentRect: var WxRect; 
                  paddingRect: var WxRect; outlineRect: var WxRect): bool {.
    cdecl, importcpp: "wxRichTextObject::GetBoxRects(@)", header: wxh.}
proc getTotalMargin*(dc: var WxDC; buffer: ptr WxRichTextBuffer; 
                     attr: WxRichTextAttr; leftMargin: var cint; 
                     rightMargin: var cint; topMargin: var cint; 
                     bottomMargin: var cint): bool {.cdecl, 
    importcpp: "wxRichTextObject::GetTotalMargin(@)", header: wxh.}
proc adjustAvailableSpace*(dc: var WxDC; buffer: ptr WxRichTextBuffer; 
                           parentAttr: WxRichTextAttr; 
                           childAttr: WxRichTextAttr; 
                           availableParentSpace: WxRect; 
                           availableContainerSpace: WxRect): WxRect {.cdecl, 
    importcpp: "wxRichTextObject::AdjustAvailableSpace(@)", header: wxh.}


proc constructwxRichTextCompositeObject*(parent: ptr WxRichTextObject = nil): WxRichTextCompositeObject {.
    cdecl, constructor, importcpp: "wxRichTextCompositeObject(@)", header: wxh.}
proc destroywxRichTextCompositeObject*(this: var WxRichTextCompositeObject) {.
    cdecl, importcpp: "#.~wxRichTextCompositeObject()", header: wxh.}
proc hitTest*(this: var WxRichTextCompositeObject; dc: var WxDC; 
              context: var WxRichTextDrawingContext; pt: WxPoint; 
              textPosition: var clong; obj: ptr ptr WxRichTextObject; 
              contextObj: ptr ptr WxRichTextObject; flags: cint = 0): cint {.
    cdecl, importcpp: "HitTest", header: wxh.}
proc findPosition*(this: var WxRichTextCompositeObject; dc: var WxDC; 
                   context: var WxRichTextDrawingContext; index: clong; 
                   pt: var WxPoint; height: ptr cint; forceLineStart: bool): bool {.
    cdecl, importcpp: "FindPosition", header: wxh.}
proc calculateRange*(this: var WxRichTextCompositeObject; start: clong; 
                     `end`: var clong) {.cdecl, importcpp: "CalculateRange", 
    header: wxh.}
proc deleteRange*(this: var WxRichTextCompositeObject; range: WxRichTextRange): bool {.
    cdecl, importcpp: "DeleteRange", header: wxh.}
proc getTextForRange*(this: WxRichTextCompositeObject; range: WxRichTextRange): WxString {.
    noSideEffect, cdecl, importcpp: "GetTextForRange", header: wxh.}
proc getRangeSize*(this: WxRichTextCompositeObject; range: WxRichTextRange; 
                   size: var WxSize; descent: var cint; dc: var WxDC; 
                   context: var WxRichTextDrawingContext; flags: cint; 
                   position: WxPoint = constructWxPoint(0,0); 
                   parentSize: WxSize = wxDefaultSize; 
                   partialExtents: ptr WxArrayInt = nil): bool {.noSideEffect, 
    cdecl, importcpp: "GetRangeSize", header: wxh.}
proc invalidate*(this: var WxRichTextCompositeObject; 
                 invalidRange: WxRichTextRange = wxRICHTEXT_ALL) {.cdecl, 
    importcpp: "Invalidate", header: wxh.}
proc getChildren*(this: var WxRichTextCompositeObject): var WxRichTextObjectList {.
    cdecl, importcpp: "GetChildren", header: wxh.}
proc getChildren*(this: WxRichTextCompositeObject): WxRichTextObjectList {.
    noSideEffect, cdecl, importcpp: "GetChildren", header: wxh.}
proc getChildCount*(this: WxRichTextCompositeObject): csize {.noSideEffect, 
    cdecl, importcpp: "GetChildCount", header: wxh.}
proc getChild*(this: WxRichTextCompositeObject; n: csize): ptr WxRichTextObject {.
    noSideEffect, cdecl, importcpp: "GetChild", header: wxh.}
proc isComposite*(this: WxRichTextCompositeObject): bool {.noSideEffect, cdecl, 
    importcpp: "IsComposite", header: wxh.}
proc isAtomic*(this: WxRichTextCompositeObject): bool {.noSideEffect, cdecl, 
    importcpp: "IsAtomic", header: wxh.}
proc isEmpty*(this: WxRichTextCompositeObject): bool {.noSideEffect, cdecl, 
    importcpp: "IsEmpty", header: wxh.}
proc getChildAtPosition*(this: WxRichTextCompositeObject; pos: clong): ptr WxRichTextObject {.
    noSideEffect, cdecl, importcpp: "GetChildAtPosition", header: wxh.}
proc copy*(this: var WxRichTextCompositeObject; obj: WxRichTextCompositeObject) {.
    cdecl, importcpp: "Copy", header: wxh.}
proc appendChild*(this: var WxRichTextCompositeObject; 
                  child: ptr WxRichTextObject): csize {.cdecl, 
    importcpp: "AppendChild", header: wxh.}
proc insertChild*(this: var WxRichTextCompositeObject; 
                  child: ptr WxRichTextObject; inFrontOf: ptr WxRichTextObject): bool {.
    cdecl, importcpp: "InsertChild", header: wxh.}
proc removeChild*(this: var WxRichTextCompositeObject; 
                  child: ptr WxRichTextObject; deleteChild: bool = false): bool {.
    cdecl, importcpp: "RemoveChild", header: wxh.}
proc deleteChildren*(this: var WxRichTextCompositeObject): bool {.cdecl, 
    importcpp: "DeleteChildren", header: wxh.}
proc defragment*(this: var WxRichTextCompositeObject; 
                 context: var WxRichTextDrawingContext; 
                 range: WxRichTextRange = wxRICHTEXT_ALL): bool {.cdecl, 
    importcpp: "Defragment", header: wxh.}
proc move*(this: var WxRichTextCompositeObject; pt: WxPoint) {.cdecl, 
    importcpp: "Move", header: wxh.}


proc constructwxRichTextParagraphLayoutBox*(parent: ptr WxRichTextObject = nil): WxRichTextParagraphLayoutBox {.
    cdecl, constructor, importcpp: "wxRichTextParagraphLayoutBox(@)", 
    header: wxh.}
proc constructwxRichTextParagraphLayoutBox*(obj: WxRichTextParagraphLayoutBox): WxRichTextParagraphLayoutBox {.
    cdecl, constructor, importcpp: "wxRichTextParagraphLayoutBox(@)", 
    header: wxh.}
proc destroywxRichTextParagraphLayoutBox*(this: var WxRichTextParagraphLayoutBox) {.
    cdecl, importcpp: "#.~wxRichTextParagraphLayoutBox()", header: wxh.}
proc hitTest*(this: var WxRichTextParagraphLayoutBox; dc: var WxDC; 
              context: var WxRichTextDrawingContext; pt: WxPoint; 
              textPosition: var clong; obj: ptr ptr WxRichTextObject; 
              contextObj: ptr ptr WxRichTextObject; flags: cint = 0): cint {.
    cdecl, importcpp: "HitTest", header: wxh.}
proc draw*(this: var WxRichTextParagraphLayoutBox; dc: var WxDC; 
           context: var WxRichTextDrawingContext; range: WxRichTextRange; 
           selection: WxRichTextSelection; rect: WxRect; descent: cint; 
           style: cint): bool {.cdecl, importcpp: "Draw", header: wxh.}
proc layout*(this: var WxRichTextParagraphLayoutBox; dc: var WxDC; 
             context: var WxRichTextDrawingContext; rect: WxRect; 
             parentRect: WxRect; style: cint): bool {.cdecl, 
    importcpp: "Layout", header: wxh.}
proc getRangeSize*(this: WxRichTextParagraphLayoutBox; range: WxRichTextRange; 
                   size: var WxSize; descent: var cint; dc: var WxDC; 
                   context: var WxRichTextDrawingContext; flags: cint; 
                   position: WxPoint = constructWxPoint(0,0); 
                   parentSize: WxSize = wxDefaultSize; 
                   partialExtents: ptr WxArrayInt = nil): bool {.noSideEffect, 
    cdecl, importcpp: "GetRangeSize", header: wxh.}
proc deleteRange*(this: var WxRichTextParagraphLayoutBox; range: WxRichTextRange): bool {.
    cdecl, importcpp: "DeleteRange", header: wxh.}
proc getTextForRange*(this: WxRichTextParagraphLayoutBox; range: WxRichTextRange): WxString {.
    noSideEffect, cdecl, importcpp: "GetTextForRange", header: wxh.}
proc getXMLNodeName*(this: WxRichTextParagraphLayoutBox): WxString {.
    noSideEffect, cdecl, importcpp: "GetXMLNodeName", header: wxh.}
proc acceptsFocus*(this: WxRichTextParagraphLayoutBox): bool {.noSideEffect, 
    cdecl, importcpp: "AcceptsFocus", header: wxh.}
proc setRichTextCtrl*(this: var WxRichTextParagraphLayoutBox; 
                      ctrl: ptr WxRichTextCtrl) {.cdecl, 
    importcpp: "SetRichTextCtrl", header: wxh.}
proc getRichTextCtrl*(this: WxRichTextParagraphLayoutBox): ptr WxRichTextCtrl {.
    noSideEffect, cdecl, importcpp: "GetRichTextCtrl", header: wxh.}
proc setPartialParagraph*(this: var WxRichTextParagraphLayoutBox; 
                          partialPara: bool) {.cdecl, 
    importcpp: "SetPartialParagraph", header: wxh.}
proc getPartialParagraph*(this: WxRichTextParagraphLayoutBox): bool {.
    noSideEffect, cdecl, importcpp: "GetPartialParagraph", header: wxh.}
proc getStyleSheet*(this: WxRichTextParagraphLayoutBox): ptr WxRichTextStyleSheet {.
    noSideEffect, cdecl, importcpp: "GetStyleSheet", header: wxh.}
proc isTopLevel*(this: WxRichTextParagraphLayoutBox): bool {.noSideEffect, 
    cdecl, importcpp: "IsTopLevel", header: wxh.}
proc insertParagraphsWithUndo*(this: var WxRichTextParagraphLayoutBox; 
                               buffer: ptr WxRichTextBuffer; pos: clong; 
                               paragraphs: WxRichTextParagraphLayoutBox; 
                               ctrl: ptr WxRichTextCtrl; flags: cint = 0): bool {.
    cdecl, importcpp: "InsertParagraphsWithUndo", header: wxh.}
proc insertTextWithUndo*(this: var WxRichTextParagraphLayoutBox; 
                         buffer: ptr WxRichTextBuffer; pos: clong; 
                         text: WxString; ctrl: ptr WxRichTextCtrl; 
                         flags: cint = 0): bool {.cdecl, 
    importcpp: "InsertTextWithUndo", header: wxh.}
proc insertNewlineWithUndo*(this: var WxRichTextParagraphLayoutBox; 
                            buffer: ptr WxRichTextBuffer; pos: clong; 
                            ctrl: ptr WxRichTextCtrl; flags: cint = 0): bool {.
    cdecl, importcpp: "InsertNewlineWithUndo", header: wxh.}
proc insertImageWithUndo*(this: var WxRichTextParagraphLayoutBox; 
                          buffer: ptr WxRichTextBuffer; pos: clong; 
                          imageBlock: WxRichTextImageBlock; 
                          ctrl: ptr WxRichTextCtrl; flags: cint; 
                          textAttr: WxRichTextAttr): bool {.cdecl, 
    importcpp: "InsertImageWithUndo", header: wxh.}
proc insertFieldWithUndo*(this: var WxRichTextParagraphLayoutBox; 
                          buffer: ptr WxRichTextBuffer; pos: clong; 
                          fieldType: WxString; properties: WxRichTextProperties; 
                          ctrl: ptr WxRichTextCtrl; flags: cint; 
                          textAttr: WxRichTextAttr): ptr WxRichTextField {.
    cdecl, importcpp: "InsertFieldWithUndo", header: wxh.}
proc getStyleForNewParagraph*(this: WxRichTextParagraphLayoutBox; 
                              buffer: ptr WxRichTextBuffer; pos: clong; 
                              caretPosition: bool = false; 
                              lookUpNewParaStyle: bool = false): WxRichTextAttr {.
    noSideEffect, cdecl, importcpp: "GetStyleForNewParagraph", header: wxh.}
proc insertObjectWithUndo*(this: var WxRichTextParagraphLayoutBox; 
                           buffer: ptr WxRichTextBuffer; pos: clong; 
                           `object`: ptr WxRichTextObject; 
                           ctrl: ptr WxRichTextCtrl; flags: cint = 0): ptr WxRichTextObject {.
    cdecl, importcpp: "InsertObjectWithUndo", header: wxh.}
proc deleteRangeWithUndo*(this: var WxRichTextParagraphLayoutBox; 
                          range: WxRichTextRange; ctrl: ptr WxRichTextCtrl; 
                          buffer: ptr WxRichTextBuffer): bool {.cdecl, 
    importcpp: "DeleteRangeWithUndo", header: wxh.}
proc drawFloats*(this: var WxRichTextParagraphLayoutBox; dc: var WxDC; 
                 context: var WxRichTextDrawingContext; range: WxRichTextRange; 
                 selection: WxRichTextSelection; rect: WxRect; descent: cint; 
                 style: cint) {.cdecl, importcpp: "DrawFloats", header: wxh.}
proc moveAnchoredObjectToParagraph*(this: var WxRichTextParagraphLayoutBox; 
                                    `from`: ptr WxRichTextParagraph; 
                                    to: ptr WxRichTextParagraph; 
                                    obj: ptr WxRichTextObject) {.cdecl, 
    importcpp: "MoveAnchoredObjectToParagraph", header: wxh.}
proc init*(this: var WxRichTextParagraphLayoutBox) {.cdecl, importcpp: "Init", 
    header: wxh.}
proc clear*(this: var WxRichTextParagraphLayoutBox) {.cdecl, importcpp: "Clear", 
    header: wxh.}
proc reset*(this: var WxRichTextParagraphLayoutBox) {.cdecl, importcpp: "Reset", 
    header: wxh.}
proc addParagraph*(this: var WxRichTextParagraphLayoutBox; text: WxString; 
                   paraStyle: ptr WxRichTextAttr = nil): WxRichTextRange {.
    discardable, cdecl, importcpp: "AddParagraph", header: wxh.}
proc addImage*(this: var WxRichTextParagraphLayoutBox; image: WxImage; 
               paraStyle: ptr WxRichTextAttr = nil): WxRichTextRange {.
    discardable, cdecl, importcpp: "AddImage", header: wxh.}
proc addParagraphs*(this: var WxRichTextParagraphLayoutBox; text: WxString; 
                    paraStyle: ptr WxRichTextAttr = nil): WxRichTextRange {.
    discardable, cdecl, importcpp: "AddParagraphs", header: wxh.}
proc getLineAtPosition*(this: WxRichTextParagraphLayoutBox; pos: clong; 
                        caretPosition: bool = false): ptr WxRichTextLine {.
    noSideEffect, cdecl, importcpp: "GetLineAtPosition", header: wxh.}
proc getLineAtYPosition*(this: WxRichTextParagraphLayoutBox; y: cint): ptr WxRichTextLine {.
    noSideEffect, cdecl, importcpp: "GetLineAtYPosition", header: wxh.}
proc getParagraphAtPosition*(this: WxRichTextParagraphLayoutBox; pos: clong; 
                             caretPosition: bool = false): ptr WxRichTextParagraph {.
    noSideEffect, cdecl, importcpp: "GetParagraphAtPosition", header: wxh.}
proc getLineSizeAtPosition*(this: WxRichTextParagraphLayoutBox; pos: clong; 
                            caretPosition: bool = false): WxSize {.noSideEffect, 
    cdecl, importcpp: "GetLineSizeAtPosition", header: wxh.}
proc getVisibleLineNumber*(this: WxRichTextParagraphLayoutBox; pos: clong; 
                           caretPosition: bool = false; 
                           startOfLine: bool = false): clong {.noSideEffect, 
    cdecl, importcpp: "GetVisibleLineNumber", header: wxh.}
proc getLineForVisibleLineNumber*(this: WxRichTextParagraphLayoutBox; 
                                  lineNumber: clong): ptr WxRichTextLine {.
    noSideEffect, cdecl, importcpp: "GetLineForVisibleLineNumber", header: wxh.}
proc getLeafObjectAtPosition*(this: WxRichTextParagraphLayoutBox; 
                              position: clong): ptr WxRichTextObject {.
    noSideEffect, cdecl, importcpp: "GetLeafObjectAtPosition", header: wxh.}
proc getParagraphAtLine*(this: WxRichTextParagraphLayoutBox; 
                         paragraphNumber: clong): ptr WxRichTextParagraph {.
    noSideEffect, cdecl, importcpp: "GetParagraphAtLine", header: wxh.}
proc getParagraphForLine*(this: WxRichTextParagraphLayoutBox; 
                          line: ptr WxRichTextLine): ptr WxRichTextParagraph {.
    noSideEffect, cdecl, importcpp: "GetParagraphForLine", header: wxh.}
proc getParagraphLength*(this: WxRichTextParagraphLayoutBox; 
                         paragraphNumber: clong): cint {.noSideEffect, cdecl, 
    importcpp: "GetParagraphLength", header: wxh.}
proc getParagraphCount*(this: WxRichTextParagraphLayoutBox): cint {.
    noSideEffect, cdecl, importcpp: "GetParagraphCount", header: wxh.}
proc getLineCount*(this: WxRichTextParagraphLayoutBox): cint {.noSideEffect, 
    cdecl, importcpp: "GetLineCount", header: wxh.}
proc getParagraphText*(this: WxRichTextParagraphLayoutBox; 
                       paragraphNumber: clong): WxString {.noSideEffect, cdecl, 
    importcpp: "GetParagraphText", header: wxh.}
proc xYToPosition*(this: WxRichTextParagraphLayoutBox; x: clong; y: clong): clong {.
    noSideEffect, cdecl, importcpp: "XYToPosition", header: wxh.}
proc positionToXY*(this: WxRichTextParagraphLayoutBox; pos: clong; x: ptr clong; 
                   y: ptr clong): bool {.noSideEffect, cdecl, 
    importcpp: "PositionToXY", header: wxh.}
proc setStyle*(this: var WxRichTextParagraphLayoutBox; range: WxRichTextRange; 
               style: WxRichTextAttr; 
               flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO): bool {.discardable, 
    cdecl, importcpp: "SetStyle", header: wxh.}
proc setStyle*(this: var WxRichTextParagraphLayoutBox; 
               obj: ptr WxRichTextObject; textAttr: WxRichTextAttr; 
               flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO) {.cdecl, 
    importcpp: "SetStyle", header: wxh.}
proc getStyle*(this: var WxRichTextParagraphLayoutBox; position: clong; 
               style: var WxRichTextAttr): bool {.cdecl, importcpp: "GetStyle", 
    header: wxh.}
proc getUncombinedStyle*(this: var WxRichTextParagraphLayoutBox; 
                         position: clong; style: var WxRichTextAttr): bool {.
    cdecl, importcpp: "GetUncombinedStyle", header: wxh.}
proc doGetStyle*(this: var WxRichTextParagraphLayoutBox; position: clong; 
                 style: var WxRichTextAttr; combineStyles: bool = true): bool {.
    cdecl, importcpp: "DoGetStyle", header: wxh.}
proc getStyleForRange*(this: var WxRichTextParagraphLayoutBox; 
                       range: WxRichTextRange; style: var WxRichTextAttr): bool {.
    cdecl, importcpp: "GetStyleForRange", header: wxh.}
proc collectStyle*(this: var WxRichTextParagraphLayoutBox; 
                   currentStyle: var WxRichTextAttr; style: WxRichTextAttr; 
                   clashingAttr: var WxRichTextAttr; 
                   absentAttr: var WxRichTextAttr): bool {.cdecl, 
    importcpp: "CollectStyle", header: wxh.}
proc setListStyle*(this: var WxRichTextParagraphLayoutBox; 
                   range: WxRichTextRange; 
                   def: ptr WxRichTextListStyleDefinition; 
                   flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                   startFrom: cint = 1; specifiedLevel: cint = - 1): bool {.
    discardable, cdecl, importcpp: "SetListStyle", header: wxh.}
proc setListStyle*(this: var WxRichTextParagraphLayoutBox; 
                   range: WxRichTextRange; defName: WxString; 
                   flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                   startFrom: cint = 1; specifiedLevel: cint = - 1): bool {.
    discardable, cdecl, importcpp: "SetListStyle", header: wxh.}
proc clearListStyle*(this: var WxRichTextParagraphLayoutBox; 
                     range: WxRichTextRange; 
                     flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO): bool {.cdecl, 
    importcpp: "ClearListStyle", header: wxh.}
proc numberList*(this: var WxRichTextParagraphLayoutBox; range: WxRichTextRange; 
                 def: ptr WxRichTextListStyleDefinition = nil; 
                 flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                 startFrom: cint = 1; specifiedLevel: cint = - 1): bool {.cdecl, 
    importcpp: "NumberList", header: wxh.}
proc numberList*(this: var WxRichTextParagraphLayoutBox; range: WxRichTextRange; 
                 defName: WxString; flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                 startFrom: cint = 1; specifiedLevel: cint = - 1): bool {.cdecl, 
    importcpp: "NumberList", header: wxh.}
proc promoteList*(this: var WxRichTextParagraphLayoutBox; promoteBy: cint; 
                  range: WxRichTextRange; 
                  def: ptr WxRichTextListStyleDefinition = nil; 
                  flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                  specifiedLevel: cint = - 1): bool {.cdecl, 
    importcpp: "PromoteList", header: wxh.}
proc promoteList*(this: var WxRichTextParagraphLayoutBox; promoteBy: cint; 
                  range: WxRichTextRange; defName: WxString; 
                  flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                  specifiedLevel: cint = - 1): bool {.cdecl, 
    importcpp: "PromoteList", header: wxh.}
proc doNumberList*(this: var WxRichTextParagraphLayoutBox; 
                   range: WxRichTextRange; promotionRange: WxRichTextRange; 
                   promoteBy: cint; def: ptr WxRichTextListStyleDefinition; 
                   flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                   startFrom: cint = 1; specifiedLevel: cint = - 1): bool {.
    cdecl, importcpp: "DoNumberList", header: wxh.}
proc findNextParagraphNumber*(this: WxRichTextParagraphLayoutBox; 
                              previousParagraph: ptr WxRichTextParagraph; 
                              attr: var WxRichTextAttr): bool {.noSideEffect, 
    cdecl, importcpp: "FindNextParagraphNumber", header: wxh.}
proc setProperties*(this: var WxRichTextParagraphLayoutBox; 
                    range: WxRichTextRange; properties: WxRichTextProperties; 
                    flags: cint = wxRICHTEXT_SETPROPERTIES_WITH_UNDO): bool {.
    discardable, cdecl, importcpp: "SetProperties", header: wxh.}
proc setObjectPropertiesWithUndo*(this: var WxRichTextParagraphLayoutBox; 
                                  obj: var WxRichTextObject; 
                                  properties: WxRichTextProperties; 
                                  objToSet: ptr WxRichTextObject = nil): bool {.
    discardable, cdecl, importcpp: "SetObjectPropertiesWithUndo", header: wxh.}
proc hasCharacterAttributes*(this: WxRichTextParagraphLayoutBox; 
                             range: WxRichTextRange; style: WxRichTextAttr): bool {.
    noSideEffect, cdecl, importcpp: "HasCharacterAttributes", header: wxh.}
proc hasParagraphAttributes*(this: WxRichTextParagraphLayoutBox; 
                             range: WxRichTextRange; style: WxRichTextAttr): bool {.
    noSideEffect, cdecl, importcpp: "HasParagraphAttributes", header: wxh.}
proc clone*(this: WxRichTextParagraphLayoutBox): ptr WxRichTextObject {.
    noSideEffect, cdecl, importcpp: "Clone", header: wxh.}
proc prepareContent*(this: var WxRichTextParagraphLayoutBox; 
                     container: var WxRichTextParagraphLayoutBox) {.cdecl, 
    importcpp: "PrepareContent", header: wxh.}
proc insertFragment*(this: var WxRichTextParagraphLayoutBox; position: clong; 
                     fragment: var WxRichTextParagraphLayoutBox): bool {.cdecl, 
    importcpp: "InsertFragment", header: wxh.}
proc copyFragment*(this: var WxRichTextParagraphLayoutBox; 
                   range: WxRichTextRange; 
                   fragment: var WxRichTextParagraphLayoutBox): bool {.cdecl, 
    importcpp: "CopyFragment", header: wxh.}
proc applyStyleSheet*(this: var WxRichTextParagraphLayoutBox; 
                      styleSheet: ptr WxRichTextStyleSheet): bool {.cdecl, 
    importcpp: "ApplyStyleSheet", header: wxh.}
proc copy*(this: var WxRichTextParagraphLayoutBox; 
           obj: WxRichTextParagraphLayoutBox) {.cdecl, importcpp: "Copy", 
    header: wxh.}
proc updateRanges*(this: var WxRichTextParagraphLayoutBox) {.cdecl, 
    importcpp: "UpdateRanges", header: wxh.}
proc getText*(this: WxRichTextParagraphLayoutBox): WxString {.noSideEffect, 
    cdecl, importcpp: "GetText", header: wxh.}
proc setDefaultStyle*(this: var WxRichTextParagraphLayoutBox; 
                      style: WxRichTextAttr): bool {.discardable, cdecl, 
    importcpp: "SetDefaultStyle", header: wxh.}
proc getDefaultStyle*(this: WxRichTextParagraphLayoutBox): WxRichTextAttr {.
    noSideEffect, cdecl, importcpp: "GetDefaultStyle", header: wxh.}
proc setBasicStyle*(this: var WxRichTextParagraphLayoutBox; 
                    style: WxRichTextAttr) {.cdecl, importcpp: "SetBasicStyle", 
    header: wxh.}
proc getBasicStyle*(this: WxRichTextParagraphLayoutBox): WxRichTextAttr {.
    noSideEffect, cdecl, importcpp: "GetBasicStyle", header: wxh.}
proc invalidate*(this: var WxRichTextParagraphLayoutBox; 
                 invalidRange: WxRichTextRange = wxRICHTEXT_ALL) {.cdecl, 
    importcpp: "Invalidate", header: wxh.}
proc doInvalidate*(this: var WxRichTextParagraphLayoutBox; 
                   invalidRange: WxRichTextRange) {.cdecl, 
    importcpp: "DoInvalidate", header: wxh.}
proc invalidateHierarchy*(this: var WxRichTextParagraphLayoutBox; 
                          invalidRange: WxRichTextRange = wxRICHTEXT_ALL) {.
    cdecl, importcpp: "InvalidateHierarchy", header: wxh.}
proc updateFloatingObjects*(this: var WxRichTextParagraphLayoutBox; 
                            availableRect: WxRect; 
                            untilObj: ptr WxRichTextObject = nil): bool {.cdecl, 
    importcpp: "UpdateFloatingObjects", header: wxh.}
proc getInvalidRange*(this: WxRichTextParagraphLayoutBox; 
                      wholeParagraphs: bool = false): WxRichTextRange {.
    noSideEffect, cdecl, importcpp: "GetInvalidRange", header: wxh.}
proc isDirty*(this: WxRichTextParagraphLayoutBox): bool {.noSideEffect, cdecl, 
    importcpp: "IsDirty", header: wxh.}
proc getFloatCollector*(this: var WxRichTextParagraphLayoutBox): ptr WxRichTextFloatCollector {.
    cdecl, importcpp: "GetFloatCollector", header: wxh.}
proc getFloatingObjectCount*(this: WxRichTextParagraphLayoutBox): cint {.
    noSideEffect, cdecl, importcpp: "GetFloatingObjectCount", header: wxh.}
proc getFloatingObjects*(this: WxRichTextParagraphLayoutBox; 
                         objects: var WxRichTextObjectList): bool {.
    noSideEffect, cdecl, importcpp: "GetFloatingObjects", header: wxh.}

type 
  WxRichTextBox* {.importcpp: "wxRichTextBox", header: wxh.} = object of WxRichTextParagraphLayoutBox
  

proc constructwxRichTextBox*(parent: ptr WxRichTextObject = nil): WxRichTextBox {.
    cdecl, constructor, importcpp: "wxRichTextBox(@)", header: wxh.}
proc constructwxRichTextBox*(obj: WxRichTextBox): WxRichTextBox {.cdecl, 
    constructor, importcpp: "wxRichTextBox(@)", header: wxh.}
proc draw*(this: var WxRichTextBox; dc: var WxDC; 
           context: var WxRichTextDrawingContext; range: WxRichTextRange; 
           selection: WxRichTextSelection; rect: WxRect; descent: cint; 
           style: cint): bool {.cdecl, importcpp: "Draw", header: wxh.}
proc getXMLNodeName*(this: WxRichTextBox): WxString {.noSideEffect, cdecl, 
    importcpp: "GetXMLNodeName", header: wxh.}
proc canEditProperties*(this: WxRichTextBox): bool {.noSideEffect, cdecl, 
    importcpp: "CanEditProperties", header: wxh.}
proc editProperties*(this: var WxRichTextBox; parent: ptr WxWindow; 
                     buffer: ptr WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EditProperties", header: wxh.}
proc getPropertiesMenuLabel*(this: WxRichTextBox): WxString {.noSideEffect, 
    cdecl, importcpp: "GetPropertiesMenuLabel", header: wxh.}
proc clone*(this: WxRichTextBox): ptr WxRichTextObject {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}
proc copy*(this: var WxRichTextBox; obj: WxRichTextBox) {.cdecl, 
    importcpp: "Copy", header: wxh.}

type 
  WxRichTextField* {.importcpp: "wxRichTextField", header: wxh.} = object of WxRichTextParagraphLayoutBox
  

proc constructwxRichTextField*(fieldType: WxString = wxEmptyString; 
                               parent: ptr WxRichTextObject = nil): WxRichTextField {.
    cdecl, constructor, importcpp: "wxRichTextField(@)", header: wxh.}
proc constructwxRichTextField*(obj: WxRichTextField): WxRichTextField {.cdecl, 
    constructor, importcpp: "wxRichTextField(@)", header: wxh.}
proc draw*(this: var WxRichTextField; dc: var WxDC; 
           context: var WxRichTextDrawingContext; range: WxRichTextRange; 
           selection: WxRichTextSelection; rect: WxRect; descent: cint; 
           style: cint): bool {.cdecl, importcpp: "Draw", header: wxh.}
proc layout*(this: var WxRichTextField; dc: var WxDC; 
             context: var WxRichTextDrawingContext; rect: WxRect; 
             parentRect: WxRect; style: cint): bool {.cdecl, 
    importcpp: "Layout", header: wxh.}
proc getRangeSize*(this: WxRichTextField; range: WxRichTextRange; 
                   size: var WxSize; descent: var cint; dc: var WxDC; 
                   context: var WxRichTextDrawingContext; flags: cint; 
                   position: WxPoint = constructWxPoint(0,0); 
                   parentSize: WxSize = wxDefaultSize; 
                   partialExtents: ptr WxArrayInt = nil): bool {.noSideEffect, 
    cdecl, importcpp: "GetRangeSize", header: wxh.}
proc getXMLNodeName*(this: WxRichTextField): WxString {.noSideEffect, cdecl, 
    importcpp: "GetXMLNodeName", header: wxh.}
proc canEditProperties*(this: WxRichTextField): bool {.noSideEffect, cdecl, 
    importcpp: "CanEditProperties", header: wxh.}
proc editProperties*(this: var WxRichTextField; parent: ptr WxWindow; 
                     buffer: ptr WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EditProperties", header: wxh.}
proc getPropertiesMenuLabel*(this: WxRichTextField): WxString {.noSideEffect, 
    cdecl, importcpp: "GetPropertiesMenuLabel", header: wxh.}
proc acceptsFocus*(this: WxRichTextField): bool {.noSideEffect, cdecl, 
    importcpp: "AcceptsFocus", header: wxh.}
proc calculateRange*(this: var WxRichTextField; start: clong; `end`: var clong) {.
    cdecl, importcpp: "CalculateRange", header: wxh.}
proc isAtomic*(this: WxRichTextField): bool {.noSideEffect, cdecl, 
    importcpp: "IsAtomic", header: wxh.}
proc isEmpty*(this: WxRichTextField): bool {.noSideEffect, cdecl, 
    importcpp: "IsEmpty", header: wxh.}
proc isTopLevel*(this: WxRichTextField): bool {.noSideEffect, cdecl, 
    importcpp: "IsTopLevel", header: wxh.}
proc setFieldType*(this: var WxRichTextField; fieldType: WxString) {.cdecl, 
    importcpp: "SetFieldType", header: wxh.}
proc getFieldType*(this: WxRichTextField): WxString {.noSideEffect, cdecl, 
    importcpp: "GetFieldType", header: wxh.}
proc updateField*(this: var WxRichTextField; buffer: ptr WxRichTextBuffer): bool {.
    cdecl, importcpp: "UpdateField", header: wxh.}
proc clone*(this: WxRichTextField): ptr WxRichTextObject {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}
proc copy*(this: var WxRichTextField; obj: WxRichTextField) {.cdecl, 
    importcpp: "Copy", header: wxh.}

type 
  WxRichTextFieldType* {.importcpp: "wxRichTextFieldType", header: wxh.} = object of WxObject
  

proc constructwxRichTextFieldType*(name: WxString = wxEmptyString): WxRichTextFieldType {.
    cdecl, constructor, importcpp: "wxRichTextFieldType(@)", header: wxh.}
proc constructwxRichTextFieldType*(fieldType: WxRichTextFieldType): WxRichTextFieldType {.
    cdecl, constructor, importcpp: "wxRichTextFieldType(@)", header: wxh.}
proc copy*(this: var WxRichTextFieldType; fieldType: WxRichTextFieldType) {.
    cdecl, importcpp: "Copy", header: wxh.}
proc draw*(this: var WxRichTextFieldType; obj: ptr WxRichTextField; 
           dc: var WxDC; context: var WxRichTextDrawingContext; 
           range: WxRichTextRange; selection: WxRichTextSelection; rect: WxRect; 
           descent: cint; style: cint): bool {.cdecl, importcpp: "Draw", 
    header: wxh.}
proc layout*(this: var WxRichTextFieldType; obj: ptr WxRichTextField; 
             dc: var WxDC; context: var WxRichTextDrawingContext; rect: WxRect; 
             parentRect: WxRect; style: cint): bool {.cdecl, 
    importcpp: "Layout", header: wxh.}
proc getRangeSize*(this: WxRichTextFieldType; obj: ptr WxRichTextField; 
                   range: WxRichTextRange; size: var WxSize; descent: var cint; 
                   dc: var WxDC; context: var WxRichTextDrawingContext; 
                   flags: cint; position: WxPoint = constructWxPoint(0,0); 
                   parentSize: WxSize = wxDefaultSize; 
                   partialExtents: ptr WxArrayInt = nil): bool {.noSideEffect, 
    cdecl, importcpp: "GetRangeSize", header: wxh.}
proc canEditProperties*(this: WxRichTextFieldType; obj: ptr WxRichTextField): bool {.
    noSideEffect, cdecl, importcpp: "CanEditProperties", header: wxh.}
proc editProperties*(this: var WxRichTextFieldType; obj: ptr WxRichTextField; 
                     parent: ptr WxWindow; buffer: ptr WxRichTextBuffer): bool {.
    cdecl, importcpp: "EditProperties", header: wxh.}
proc getPropertiesMenuLabel*(this: WxRichTextFieldType; obj: ptr WxRichTextField): WxString {.
    noSideEffect, cdecl, importcpp: "GetPropertiesMenuLabel", header: wxh.}
proc updateField*(this: var WxRichTextFieldType; buffer: ptr WxRichTextBuffer; 
                  obj: ptr WxRichTextField): bool {.cdecl, 
    importcpp: "UpdateField", header: wxh.}
proc isTopLevel*(this: WxRichTextFieldType; obj: ptr WxRichTextField): bool {.
    noSideEffect, cdecl, importcpp: "IsTopLevel", header: wxh.}
proc setName*(this: var WxRichTextFieldType; name: WxString) {.cdecl, 
    importcpp: "SetName", header: wxh.}
proc getName*(this: WxRichTextFieldType): WxString {.noSideEffect, cdecl, 
    importcpp: "GetName", header: wxh.}

type 
  WxRichTextFieldTypeStandard* {.importcpp: "wxRichTextFieldTypeStandard", 
                                 header: wxh.} = object of WxRichTextFieldType
  

const 
  wxRICHTEXT_FIELD_STYLE_COMPOSITE* = 0x00000001
  wxRICHTEXT_FIELD_STYLE_RECTANGLE* = 0x00000002
  wxRICHTEXT_FIELD_STYLE_NO_BORDER* = 0x00000004
  wxRICHTEXT_FIELD_STYLE_START_TAG* = 0x00000008
  wxRICHTEXT_FIELD_STYLE_END_TAG* = 0x00000010

proc constructwxRichTextFieldTypeStandard*(name: WxString; label: WxString; 
    displayStyle: cint = wxRICHTEXT_FIELD_STYLE_RECTANGLE): WxRichTextFieldTypeStandard {.
    cdecl, constructor, importcpp: "wxRichTextFieldTypeStandard(@)", header: wxh.}
proc constructwxRichTextFieldTypeStandard*(name: WxString; bitmap: WxBitmap; 
    displayStyle: cint = wxRICHTEXT_FIELD_STYLE_NO_BORDER): WxRichTextFieldTypeStandard {.
    cdecl, constructor, importcpp: "wxRichTextFieldTypeStandard(@)", header: wxh.}
proc constructwxRichTextFieldTypeStandard*(): WxRichTextFieldTypeStandard {.
    cdecl, constructor, importcpp: "wxRichTextFieldTypeStandard(@)", header: wxh.}
proc constructwxRichTextFieldTypeStandard*(field: WxRichTextFieldTypeStandard): WxRichTextFieldTypeStandard {.
    cdecl, constructor, importcpp: "wxRichTextFieldTypeStandard(@)", header: wxh.}
proc init*(this: var WxRichTextFieldTypeStandard) {.cdecl, importcpp: "Init", 
    header: wxh.}
proc copy*(this: var WxRichTextFieldTypeStandard; 
           field: WxRichTextFieldTypeStandard) {.cdecl, importcpp: "Copy", 
    header: wxh.}
proc draw*(this: var WxRichTextFieldTypeStandard; obj: ptr WxRichTextField; 
           dc: var WxDC; context: var WxRichTextDrawingContext; 
           range: WxRichTextRange; selection: WxRichTextSelection; rect: WxRect; 
           descent: cint; style: cint): bool {.cdecl, importcpp: "Draw", 
    header: wxh.}
proc layout*(this: var WxRichTextFieldTypeStandard; obj: ptr WxRichTextField; 
             dc: var WxDC; context: var WxRichTextDrawingContext; rect: WxRect; 
             parentRect: WxRect; style: cint): bool {.cdecl, 
    importcpp: "Layout", header: wxh.}
proc getRangeSize*(this: WxRichTextFieldTypeStandard; obj: ptr WxRichTextField; 
                   range: WxRichTextRange; size: var WxSize; descent: var cint; 
                   dc: var WxDC; context: var WxRichTextDrawingContext; 
                   flags: cint; position: WxPoint = constructWxPoint(0,0); 
                   parentSize: WxSize = wxDefaultSize; 
                   partialExtents: ptr WxArrayInt = nil): bool {.noSideEffect, 
    cdecl, importcpp: "GetRangeSize", header: wxh.}
proc getSize*(this: WxRichTextFieldTypeStandard; obj: ptr WxRichTextField; 
              dc: var WxDC; context: var WxRichTextDrawingContext; style: cint): WxSize {.
    noSideEffect, cdecl, importcpp: "GetSize", header: wxh.}
proc isTopLevel*(this: WxRichTextFieldTypeStandard; obj: ptr WxRichTextField): bool {.
    noSideEffect, cdecl, importcpp: "IsTopLevel", header: wxh.}
proc setLabel*(this: var WxRichTextFieldTypeStandard; label: WxString) {.cdecl, 
    importcpp: "SetLabel", header: wxh.}
proc getLabel*(this: WxRichTextFieldTypeStandard): WxString {.noSideEffect, 
    cdecl, importcpp: "GetLabel", header: wxh.}
proc setBitmap*(this: var WxRichTextFieldTypeStandard; bitmap: WxBitmap) {.
    cdecl, importcpp: "SetBitmap", header: wxh.}
proc getBitmap*(this: WxRichTextFieldTypeStandard): WxBitmap {.noSideEffect, 
    cdecl, importcpp: "GetBitmap", header: wxh.}
proc getDisplayStyle*(this: WxRichTextFieldTypeStandard): cint {.noSideEffect, 
    cdecl, importcpp: "GetDisplayStyle", header: wxh.}
proc setDisplayStyle*(this: var WxRichTextFieldTypeStandard; displayStyle: cint) {.
    cdecl, importcpp: "SetDisplayStyle", header: wxh.}
proc getFont*(this: WxRichTextFieldTypeStandard): WxFont {.noSideEffect, cdecl, 
    importcpp: "GetFont", header: wxh.}
proc setFont*(this: var WxRichTextFieldTypeStandard; font: WxFont) {.cdecl, 
    importcpp: "SetFont", header: wxh.}
proc getTextColour*(this: WxRichTextFieldTypeStandard): WxColour {.noSideEffect, 
    cdecl, importcpp: "GetTextColour", header: wxh.}
proc setTextColour*(this: var WxRichTextFieldTypeStandard; colour: WxColour) {.
    cdecl, importcpp: "SetTextColour", header: wxh.}
proc getBorderColour*(this: WxRichTextFieldTypeStandard): WxColour {.
    noSideEffect, cdecl, importcpp: "GetBorderColour", header: wxh.}
proc setBorderColour*(this: var WxRichTextFieldTypeStandard; colour: WxColour) {.
    cdecl, importcpp: "SetBorderColour", header: wxh.}
proc getBackgroundColour*(this: WxRichTextFieldTypeStandard): WxColour {.
    noSideEffect, cdecl, importcpp: "GetBackgroundColour", header: wxh.}
proc setBackgroundColour*(this: var WxRichTextFieldTypeStandard; 
                          colour: WxColour) {.cdecl, 
    importcpp: "SetBackgroundColour", header: wxh.}
proc setVerticalPadding*(this: var WxRichTextFieldTypeStandard; padding: cint) {.
    cdecl, importcpp: "SetVerticalPadding", header: wxh.}
proc getVerticalPadding*(this: WxRichTextFieldTypeStandard): cint {.
    noSideEffect, cdecl, importcpp: "GetVerticalPadding", header: wxh.}
proc setHorizontalPadding*(this: var WxRichTextFieldTypeStandard; padding: cint) {.
    cdecl, importcpp: "SetHorizontalPadding", header: wxh.}
proc getHorizontalPadding*(this: WxRichTextFieldTypeStandard): cint {.
    noSideEffect, cdecl, importcpp: "GetHorizontalPadding", header: wxh.}
proc setHorizontalMargin*(this: var WxRichTextFieldTypeStandard; margin: cint) {.
    cdecl, importcpp: "SetHorizontalMargin", header: wxh.}
proc getHorizontalMargin*(this: WxRichTextFieldTypeStandard): cint {.
    noSideEffect, cdecl, importcpp: "GetHorizontalMargin", header: wxh.}
proc setVerticalMargin*(this: var WxRichTextFieldTypeStandard; margin: cint) {.
    cdecl, importcpp: "SetVerticalMargin", header: wxh.}
proc getVerticalMargin*(this: WxRichTextFieldTypeStandard): cint {.noSideEffect, 
    cdecl, importcpp: "GetVerticalMargin", header: wxh.}

type 
  WxRichTextLine* {.importcpp: "wxRichTextLine", header: wxh.} = object 
  

proc constructwxRichTextLine*(parent: ptr WxRichTextParagraph): WxRichTextLine {.
    cdecl, constructor, importcpp: "wxRichTextLine(@)", header: wxh.}
proc constructwxRichTextLine*(obj: WxRichTextLine): WxRichTextLine {.cdecl, 
    constructor, importcpp: "wxRichTextLine(@)", header: wxh.}
proc destroywxRichTextLine*(this: var WxRichTextLine) {.cdecl, 
    importcpp: "#.~wxRichTextLine()", header: wxh.}
proc setRange*(this: var WxRichTextLine; range: WxRichTextRange) {.cdecl, 
    importcpp: "SetRange", header: wxh.}
proc setRange*(this: var WxRichTextLine; `from`: clong; to: clong) {.cdecl, 
    importcpp: "SetRange", header: wxh.}
proc getParent*(this: var WxRichTextLine): ptr WxRichTextParagraph {.cdecl, 
    importcpp: "GetParent", header: wxh.}
proc getRange*(this: WxRichTextLine): WxRichTextRange {.noSideEffect, cdecl, 
    importcpp: "GetRange", header: wxh.}
proc getRange*(this: var WxRichTextLine): var WxRichTextRange {.cdecl, 
    importcpp: "GetRange", header: wxh.}
proc getAbsoluteRange*(this: WxRichTextLine): WxRichTextRange {.noSideEffect, 
    cdecl, importcpp: "GetAbsoluteRange", header: wxh.}
proc getSize*(this: WxRichTextLine): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetSize", header: wxh.}
proc setSize*(this: var WxRichTextLine; sz: WxSize) {.cdecl, 
    importcpp: "SetSize", header: wxh.}
proc getPosition*(this: WxRichTextLine): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetPosition", header: wxh.}
proc setPosition*(this: var WxRichTextLine; pos: WxPoint) {.cdecl, 
    importcpp: "SetPosition", header: wxh.}
proc getAbsolutePosition*(this: WxRichTextLine): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetAbsolutePosition", header: wxh.}
proc getRect*(this: WxRichTextLine): WxRect {.noSideEffect, cdecl, 
    importcpp: "GetRect", header: wxh.}
proc setDescent*(this: var WxRichTextLine; descent: cint) {.cdecl, 
    importcpp: "SetDescent", header: wxh.}
proc getDescent*(this: WxRichTextLine): cint {.noSideEffect, cdecl, 
    importcpp: "GetDescent", header: wxh.}
proc init*(this: var WxRichTextLine; parent: ptr WxRichTextParagraph) {.cdecl, 
    importcpp: "Init", header: wxh.}
proc copy*(this: var WxRichTextLine; obj: WxRichTextLine) {.cdecl, 
    importcpp: "Copy", header: wxh.}
proc clone*(this: WxRichTextLine): ptr WxRichTextLine {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}

type 
  WxRichTextParagraph* {.importcpp: "wxRichTextParagraph", header: wxh.} = object of WxRichTextCompositeObject
  

proc constructwxRichTextParagraph*(parent: ptr WxRichTextObject = nil; 
                                   style: ptr WxRichTextAttr = nil): WxRichTextParagraph {.
    cdecl, constructor, importcpp: "wxRichTextParagraph(@)", header: wxh.}
proc constructwxRichTextParagraph*(text: WxString; 
                                   parent: ptr WxRichTextObject = nil; 
                                   paraStyle: ptr WxRichTextAttr = nil; 
                                   charStyle: ptr WxRichTextAttr = nil): WxRichTextParagraph {.
    cdecl, constructor, importcpp: "wxRichTextParagraph(@)", header: wxh.}
proc destroywxRichTextParagraph*(this: var WxRichTextParagraph) {.cdecl, 
    importcpp: "#.~wxRichTextParagraph()", header: wxh.}
proc constructwxRichTextParagraph*(obj: WxRichTextParagraph): WxRichTextParagraph {.
    cdecl, constructor, importcpp: "wxRichTextParagraph(@)", header: wxh.}
proc draw*(this: var WxRichTextParagraph; dc: var WxDC; 
           context: var WxRichTextDrawingContext; range: WxRichTextRange; 
           selection: WxRichTextSelection; rect: WxRect; descent: cint; 
           style: cint): bool {.cdecl, importcpp: "Draw", header: wxh.}
proc layout*(this: var WxRichTextParagraph; dc: var WxDC; 
             context: var WxRichTextDrawingContext; rect: WxRect; 
             parentRect: WxRect; style: cint): bool {.cdecl, 
    importcpp: "Layout", header: wxh.}
proc getRangeSize*(this: WxRichTextParagraph; range: WxRichTextRange; 
                   size: var WxSize; descent: var cint; dc: var WxDC; 
                   context: var WxRichTextDrawingContext; flags: cint; 
                   position: WxPoint = constructWxPoint(0,0); 
                   parentSize: WxSize = wxDefaultSize; 
                   partialExtents: ptr WxArrayInt = nil): bool {.noSideEffect, 
    cdecl, importcpp: "GetRangeSize", header: wxh.}
proc findPosition*(this: var WxRichTextParagraph; dc: var WxDC; 
                   context: var WxRichTextDrawingContext; index: clong; 
                   pt: var WxPoint; height: ptr cint; forceLineStart: bool): bool {.
    cdecl, importcpp: "FindPosition", header: wxh.}
proc hitTest*(this: var WxRichTextParagraph; dc: var WxDC; 
              context: var WxRichTextDrawingContext; pt: WxPoint; 
              textPosition: var clong; obj: ptr ptr WxRichTextObject; 
              contextObj: ptr ptr WxRichTextObject; flags: cint = 0): cint {.
    cdecl, importcpp: "HitTest", header: wxh.}
proc calculateRange*(this: var WxRichTextParagraph; start: clong; 
                     `end`: var clong) {.cdecl, importcpp: "CalculateRange", 
    header: wxh.}
proc getXMLNodeName*(this: WxRichTextParagraph): WxString {.noSideEffect, cdecl, 
    importcpp: "GetXMLNodeName", header: wxh.}
proc copy*(this: var WxRichTextParagraph; obj: WxRichTextParagraph) {.cdecl, 
    importcpp: "Copy", header: wxh.}
proc clone*(this: WxRichTextParagraph): ptr WxRichTextObject {.noSideEffect, 
    cdecl, importcpp: "Clone", header: wxh.}
proc clearLines*(this: var WxRichTextParagraph) {.cdecl, 
    importcpp: "ClearLines", header: wxh.}
proc applyParagraphStyle*(this: var WxRichTextParagraph; 
                          line: ptr WxRichTextLine; attr: WxRichTextAttr; 
                          rect: WxRect; dc: var WxDC) {.cdecl, 
    importcpp: "ApplyParagraphStyle", header: wxh.}
proc insertText*(this: var WxRichTextParagraph; pos: clong; text: WxString): bool {.
    cdecl, importcpp: "InsertText", header: wxh.}
proc splitAt*(this: var WxRichTextParagraph; pos: clong; 
              previousObject: ptr ptr WxRichTextObject = nil): ptr WxRichTextObject {.
    cdecl, importcpp: "SplitAt", header: wxh.}
proc moveToList*(this: var WxRichTextParagraph; obj: ptr WxRichTextObject; 
                 list: var WxList) {.cdecl, importcpp: "MoveToList", header: wxh.}
proc moveFromList*(this: var WxRichTextParagraph; list: var WxList) {.cdecl, 
    importcpp: "MoveFromList", header: wxh.}
proc getContiguousPlainText*(this: var WxRichTextParagraph; text: var WxString; 
                             range: WxRichTextRange; fromStart: bool = true): bool {.
    cdecl, importcpp: "GetContiguousPlainText", header: wxh.}
proc findWrapPosition*(this: var WxRichTextParagraph; range: WxRichTextRange; 
                       dc: var WxDC; context: var WxRichTextDrawingContext; 
                       availableSpace: cint; wrapPosition: var clong; 
                       partialExtents: ptr WxArrayInt): bool {.cdecl, 
    importcpp: "FindWrapPosition", header: wxh.}
proc findObjectAtPosition*(this: var WxRichTextParagraph; position: clong): ptr WxRichTextObject {.
    cdecl, importcpp: "FindObjectAtPosition", header: wxh.}
proc getBulletText*(this: var WxRichTextParagraph): WxString {.cdecl, 
    importcpp: "GetBulletText", header: wxh.}
proc allocateLine*(this: var WxRichTextParagraph; pos: cint): ptr WxRichTextLine {.
    cdecl, importcpp: "AllocateLine", header: wxh.}
proc clearUnusedLines*(this: var WxRichTextParagraph; lineCount: cint): bool {.
    cdecl, importcpp: "ClearUnusedLines", header: wxh.}
proc getCombinedAttributes*(this: WxRichTextParagraph; 
                            contentStyle: WxRichTextAttr; 
                            includingBoxAttr: bool = false): WxRichTextAttr {.
    noSideEffect, cdecl, importcpp: "GetCombinedAttributes", header: wxh.}
proc getCombinedAttributes*(this: WxRichTextParagraph; 
                            includingBoxAttr: bool = false): WxRichTextAttr {.
    noSideEffect, cdecl, importcpp: "GetCombinedAttributes", header: wxh.}
proc getFirstLineBreakPosition*(this: var WxRichTextParagraph; pos: clong): clong {.
    cdecl, importcpp: "GetFirstLineBreakPosition", header: wxh.}
proc initDefaultTabs*() {.cdecl, 
                          importcpp: "wxRichTextParagraph::InitDefaultTabs(@)", 
                          header: wxh.}
proc clearDefaultTabs*() {.cdecl, importcpp: "wxRichTextParagraph::ClearDefaultTabs(@)", 
                           header: wxh.}
proc getDefaultTabs*(): WxArrayInt {.cdecl, importcpp: "wxRichTextParagraph::GetDefaultTabs(@)", 
                                     header: wxh.}
proc layoutFloat*(this: var WxRichTextParagraph; dc: var WxDC; 
                  context: var WxRichTextDrawingContext; rect: WxRect; 
                  parentRect: WxRect; style: cint; 
                  floatCollector: ptr WxRichTextFloatCollector) {.cdecl, 
    importcpp: "LayoutFloat", header: wxh.}


proc constructwxRichTextPlainText*(text: WxString = wxEmptyString; 
                                   parent: ptr WxRichTextObject = nil; 
                                   style: ptr WxRichTextAttr = nil): WxRichTextPlainText {.
    cdecl, constructor, importcpp: "wxRichTextPlainText(@)", header: wxh.}
proc constructwxRichTextPlainText*(obj: WxRichTextPlainText): WxRichTextPlainText {.
    cdecl, constructor, importcpp: "wxRichTextPlainText(@)", header: wxh.}
proc getText*(this: WxRichTextPlainText): WxString {.noSideEffect, cdecl, 
    importcpp: "GetText", header: wxh.}
proc setText*(this: var WxRichTextPlainText; text: WxString) {.cdecl, 
    importcpp: "SetText", header: wxh.}
proc copy*(this: var WxRichTextPlainText; obj: WxRichTextPlainText) {.cdecl, 
    importcpp: "Copy", header: wxh.}
proc clone*(this: WxRichTextPlainText): ptr WxRichTextObject {.noSideEffect, 
    cdecl, importcpp: "Clone", header: wxh.}

type 
  WxRichTextImageBlock* {.importcpp: "wxRichTextImageBlock", header: wxh.} = object of WxObject
  

proc constructwxRichTextImageBlock*(): WxRichTextImageBlock {.cdecl, 
    constructor, importcpp: "wxRichTextImageBlock(@)", header: wxh.}
proc constructwxRichTextImageBlock*(`block`: WxRichTextImageBlock): WxRichTextImageBlock {.
    cdecl, constructor, importcpp: "wxRichTextImageBlock(@)", header: wxh.}
proc destroywxRichTextImageBlock*(this: var WxRichTextImageBlock) {.cdecl, 
    importcpp: "#.~wxRichTextImageBlock()", header: wxh.}
proc init*(this: var WxRichTextImageBlock) {.cdecl, importcpp: "Init", 
    header: wxh.}
proc clear*(this: var WxRichTextImageBlock) {.cdecl, importcpp: "Clear", 
    header: wxh.}
proc makeImageBlock*(this: var WxRichTextImageBlock; filename: WxString; 
                     imageType: WxBitmapType; image: var WxImage; 
                     convertToJPEG: bool = true): bool {.cdecl, 
    importcpp: "MakeImageBlock", header: wxh.}
proc makeImageBlock*(this: var WxRichTextImageBlock; image: var WxImage; 
                     imageType: WxBitmapType; quality: cint = 80): bool {.cdecl, 
    importcpp: "MakeImageBlock", header: wxh.}
proc makeImageBlockDefaultQuality*(this: var WxRichTextImageBlock; 
                                   image: WxImage; imageType: WxBitmapType): bool {.
    cdecl, importcpp: "MakeImageBlockDefaultQuality", header: wxh.}
proc doMakeImageBlock*(this: var WxRichTextImageBlock; image: WxImage; 
                       imageType: WxBitmapType): bool {.cdecl, 
    importcpp: "DoMakeImageBlock", header: wxh.}
proc write*(this: var WxRichTextImageBlock; filename: WxString): bool {.cdecl, 
    importcpp: "Write", header: wxh.}
proc load*(this: var WxRichTextImageBlock; image: var WxImage): bool {.cdecl, 
    importcpp: "Load", header: wxh.}
proc getData*(this: WxRichTextImageBlock): ptr cuchar {.noSideEffect, cdecl, 
    importcpp: "GetData", header: wxh.}
proc getDataSize*(this: WxRichTextImageBlock): csize {.noSideEffect, cdecl, 
    importcpp: "GetDataSize", header: wxh.}
proc getImageType*(this: WxRichTextImageBlock): WxBitmapType {.noSideEffect, 
    cdecl, importcpp: "GetImageType", header: wxh.}
proc setData*(this: var WxRichTextImageBlock; image: ptr cuchar) {.cdecl, 
    importcpp: "SetData", header: wxh.}
proc setDataSize*(this: var WxRichTextImageBlock; size: csize) {.cdecl, 
    importcpp: "SetDataSize", header: wxh.}
proc setImageType*(this: var WxRichTextImageBlock; imageType: WxBitmapType) {.
    cdecl, importcpp: "SetImageType", header: wxh.}
proc isOk*(this: WxRichTextImageBlock): bool {.noSideEffect, cdecl, 
    importcpp: "IsOk", header: wxh.}
proc ok*(this: WxRichTextImageBlock): bool {.noSideEffect, cdecl, 
    importcpp: "Ok", header: wxh.}
proc getExtension*(this: WxRichTextImageBlock): WxString {.noSideEffect, cdecl, 
    importcpp: "GetExtension", header: wxh.}

type 
  WxRichTextImage* {.importcpp: "wxRichTextImage", header: wxh.} = object of WxRichTextObject
  

proc constructwxRichTextImage*(parent: ptr WxRichTextObject = nil): WxRichTextImage {.
    cdecl, constructor, importcpp: "wxRichTextImage(@)", header: wxh.}
proc constructwxRichTextImage*(image: WxImage; 
                               parent: ptr WxRichTextObject = nil; 
                               charStyle: ptr WxRichTextAttr = nil): WxRichTextImage {.
    cdecl, constructor, importcpp: "wxRichTextImage(@)", header: wxh.}
proc constructwxRichTextImage*(imageBlock: WxRichTextImageBlock; 
                               parent: ptr WxRichTextObject = nil; 
                               charStyle: ptr WxRichTextAttr = nil): WxRichTextImage {.
    cdecl, constructor, importcpp: "wxRichTextImage(@)", header: wxh.}
proc constructwxRichTextImage*(obj: WxRichTextImage): WxRichTextImage {.cdecl, 
    constructor, importcpp: "wxRichTextImage(@)", header: wxh.}
proc destroywxRichTextImage*(this: var WxRichTextImage) {.cdecl, 
    importcpp: "#.~wxRichTextImage()", header: wxh.}
proc init*(this: var WxRichTextImage) {.cdecl, importcpp: "Init", header: wxh.}
proc draw*(this: var WxRichTextImage; dc: var WxDC; 
           context: var WxRichTextDrawingContext; range: WxRichTextRange; 
           selection: WxRichTextSelection; rect: WxRect; descent: cint; 
           style: cint): bool {.cdecl, importcpp: "Draw", header: wxh.}
proc layout*(this: var WxRichTextImage; dc: var WxDC; 
             context: var WxRichTextDrawingContext; rect: WxRect; 
             parentRect: WxRect; style: cint): bool {.cdecl, 
    importcpp: "Layout", header: wxh.}
proc getRangeSize*(this: WxRichTextImage; range: WxRichTextRange; 
                   size: var WxSize; descent: var cint; dc: var WxDC; 
                   context: var WxRichTextDrawingContext; flags: cint; 
                   position: WxPoint = constructWxPoint(0,0); 
                   parentSize: WxSize = wxDefaultSize; 
                   partialExtents: ptr WxArrayInt = nil): bool {.noSideEffect, 
    cdecl, importcpp: "GetRangeSize", header: wxh.}
proc getNaturalSize*(this: WxRichTextImage): WxTextAttrSize {.noSideEffect, 
    cdecl, importcpp: "GetNaturalSize", header: wxh.}
proc isEmpty*(this: WxRichTextImage): bool {.noSideEffect, cdecl, 
    importcpp: "IsEmpty", header: wxh.}
proc canEditProperties*(this: WxRichTextImage): bool {.noSideEffect, cdecl, 
    importcpp: "CanEditProperties", header: wxh.}
proc editProperties*(this: var WxRichTextImage; parent: ptr WxWindow; 
                     buffer: ptr WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EditProperties", header: wxh.}
proc getPropertiesMenuLabel*(this: WxRichTextImage): WxString {.noSideEffect, 
    cdecl, importcpp: "GetPropertiesMenuLabel", header: wxh.}
proc usesParagraphAttributes*(this: WxRichTextImage): bool {.noSideEffect, 
    cdecl, importcpp: "UsesParagraphAttributes", header: wxh.}
proc isFloatable*(this: WxRichTextImage): bool {.noSideEffect, cdecl, 
    importcpp: "IsFloatable", header: wxh.}
proc getXMLNodeName*(this: WxRichTextImage): WxString {.noSideEffect, cdecl, 
    importcpp: "GetXMLNodeName", header: wxh.}
proc getImageCache*(this: WxRichTextImage): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetImageCache", header: wxh.}
proc setImageCache*(this: var WxRichTextImage; bitmap: WxBitmap) {.cdecl, 
    importcpp: "SetImageCache", header: wxh.}
proc resetImageCache*(this: var WxRichTextImage) {.cdecl, 
    importcpp: "ResetImageCache", header: wxh.}
proc getImageBlock*(this: var WxRichTextImage): var WxRichTextImageBlock {.
    cdecl, importcpp: "GetImageBlock", header: wxh.}
proc copy*(this: var WxRichTextImage; obj: WxRichTextImage) {.cdecl, 
    importcpp: "Copy", header: wxh.}
proc clone*(this: WxRichTextImage): ptr WxRichTextObject {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}
proc loadImageCache*(this: var WxRichTextImage; dc: var WxDC; 
                     resetCache: bool = false; 
                     parentSize: WxSize = wxDefaultSize): bool {.cdecl, 
    importcpp: "LoadImageCache", header: wxh.}
proc getOriginalImageSize*(this: WxRichTextImage): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetOriginalImageSize", header: wxh.}
proc setOriginalImageSize*(this: var WxRichTextImage; sz: WxSize) {.cdecl, 
    importcpp: "SetOriginalImageSize", header: wxh.}
discard "forward decl of wxRichTextCommand"
discard "forward decl of wxRichTextAction"

proc constructwxRichTextBuffer*(): WxRichTextBuffer {.cdecl, constructor, 
    importcpp: "wxRichTextBuffer(@)", header: wxh.}
proc constructwxRichTextBuffer*(obj: WxRichTextBuffer): WxRichTextBuffer {.
    cdecl, constructor, importcpp: "wxRichTextBuffer(@)", header: wxh.}
proc destroywxRichTextBuffer*(this: var WxRichTextBuffer) {.cdecl, 
    importcpp: "#.~wxRichTextBuffer()", header: wxh.}
proc setStyleSheet*(this: var WxRichTextBuffer; 
                    styleSheet: ptr WxRichTextStyleSheet) {.cdecl, 
    importcpp: "SetStyleSheet", header: wxh.}
proc getStyleSheet*(this: WxRichTextBuffer): ptr WxRichTextStyleSheet {.
    noSideEffect, cdecl, importcpp: "GetStyleSheet", header: wxh.}
proc setStyleSheetAndNotify*(this: var WxRichTextBuffer; 
                             sheet: ptr WxRichTextStyleSheet): bool {.
    discardable, cdecl, importcpp: "SetStyleSheetAndNotify", header: wxh.}
proc pushStyleSheet*(this: var WxRichTextBuffer; 
                     styleSheet: ptr WxRichTextStyleSheet): bool {.cdecl, 
    importcpp: "PushStyleSheet", header: wxh.}
proc popStyleSheet*(this: var WxRichTextBuffer): ptr WxRichTextStyleSheet {.
    cdecl, importcpp: "PopStyleSheet", header: wxh.}
proc getFontTable*(this: var WxRichTextBuffer): var WxRichTextFontTable {.cdecl, 
    importcpp: "GetFontTable", header: wxh.}
proc getFontTable*(this: WxRichTextBuffer): WxRichTextFontTable {.noSideEffect, 
    cdecl, importcpp: "GetFontTable", header: wxh.}
proc setFontTable*(this: var WxRichTextBuffer; table: WxRichTextFontTable) {.
    cdecl, importcpp: "SetFontTable", header: wxh.}
proc setFontScale*(this: var WxRichTextBuffer; fontScale: cdouble) {.cdecl, 
    importcpp: "SetFontScale", header: wxh.}
proc getFontScale*(this: WxRichTextBuffer): cdouble {.noSideEffect, cdecl, 
    importcpp: "GetFontScale", header: wxh.}
proc setDimensionScale*(this: var WxRichTextBuffer; dimScale: cdouble) {.cdecl, 
    importcpp: "SetDimensionScale", header: wxh.}
proc getDimensionScale*(this: WxRichTextBuffer): cdouble {.noSideEffect, cdecl, 
    importcpp: "GetDimensionScale", header: wxh.}
proc init*(this: var WxRichTextBuffer) {.cdecl, importcpp: "Init", header: wxh.}
proc resetAndClearCommands*(this: var WxRichTextBuffer) {.cdecl, 
    importcpp: "ResetAndClearCommands", header: wxh.}
proc loadFile*(this: var WxRichTextBuffer; filename: WxString; 
               `type`: WxRichTextFileType = wxRICHTEXT_TYPE_ANY): bool {.cdecl, 
    importcpp: "LoadFile", header: wxh.}
proc saveFile*(this: var WxRichTextBuffer; filename: WxString; 
               `type`: WxRichTextFileType = wxRICHTEXT_TYPE_ANY): bool {.cdecl, 
    importcpp: "SaveFile", header: wxh.}
proc setHandlerFlags*(this: var WxRichTextBuffer; flags: cint) {.cdecl, 
    importcpp: "SetHandlerFlags", header: wxh.}
proc getHandlerFlags*(this: WxRichTextBuffer): cint {.noSideEffect, cdecl, 
    importcpp: "GetHandlerFlags", header: wxh.}
proc addParagraph*(this: var WxRichTextBuffer; text: WxString; 
                   paraStyle: ptr WxRichTextAttr = nil): WxRichTextRange {.
    discardable, cdecl, importcpp: "AddParagraph", header: wxh.}
proc beginBatchUndo*(this: var WxRichTextBuffer; cmdName: WxString): bool {.
    cdecl, importcpp: "BeginBatchUndo", header: wxh.}
proc endBatchUndo*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EndBatchUndo", header: wxh.}
proc batchingUndo*(this: WxRichTextBuffer): bool {.noSideEffect, cdecl, 
    importcpp: "BatchingUndo", header: wxh.}
proc submitAction*(this: var WxRichTextBuffer; action: ptr WxRichTextAction): bool {.
    cdecl, importcpp: "SubmitAction", header: wxh.}
proc getBatchedCommand*(this: WxRichTextBuffer): ptr WxRichTextCommand {.
    noSideEffect, cdecl, importcpp: "GetBatchedCommand", header: wxh.}
proc beginSuppressUndo*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "BeginSuppressUndo", header: wxh.}
proc endSuppressUndo*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EndSuppressUndo", header: wxh.}
proc suppressingUndo*(this: WxRichTextBuffer): bool {.noSideEffect, cdecl, 
    importcpp: "SuppressingUndo", header: wxh.}
proc copyToClipboard*(this: var WxRichTextBuffer; range: WxRichTextRange): bool {.
    cdecl, importcpp: "CopyToClipboard", header: wxh.}
proc pasteFromClipboard*(this: var WxRichTextBuffer; position: clong): bool {.
    cdecl, importcpp: "PasteFromClipboard", header: wxh.}
proc canPasteFromClipboard*(this: WxRichTextBuffer): bool {.noSideEffect, cdecl, 
    importcpp: "CanPasteFromClipboard", header: wxh.}
proc beginStyle*(this: var WxRichTextBuffer; style: WxRichTextAttr): bool {.
    cdecl, importcpp: "BeginStyle", header: wxh.}
proc endStyle*(this: var WxRichTextBuffer): bool {.cdecl, importcpp: "EndStyle", 
    header: wxh.}
proc endAllStyles*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EndAllStyles", header: wxh.}
proc clearStyleStack*(this: var WxRichTextBuffer) {.cdecl, 
    importcpp: "ClearStyleStack", header: wxh.}
proc getStyleStackSize*(this: WxRichTextBuffer): csize {.noSideEffect, cdecl, 
    importcpp: "GetStyleStackSize", header: wxh.}
proc beginBold*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "BeginBold", header: wxh.}
proc endBold*(this: var WxRichTextBuffer): bool {.cdecl, importcpp: "EndBold", 
    header: wxh.}
proc beginItalic*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "BeginItalic", header: wxh.}
proc endItalic*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EndItalic", header: wxh.}
proc beginUnderline*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "BeginUnderline", header: wxh.}
proc endUnderline*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EndUnderline", header: wxh.}
proc beginFontSize*(this: var WxRichTextBuffer; pointSize: cint): bool {.cdecl, 
    importcpp: "BeginFontSize", header: wxh.}
proc endFontSize*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EndFontSize", header: wxh.}
proc beginFont*(this: var WxRichTextBuffer; font: WxFont): bool {.cdecl, 
    importcpp: "BeginFont", header: wxh.}
proc endFont*(this: var WxRichTextBuffer): bool {.cdecl, importcpp: "EndFont", 
    header: wxh.}
proc beginTextColour*(this: var WxRichTextBuffer; colour: WxColour): bool {.
    cdecl, importcpp: "BeginTextColour", header: wxh.}
proc endTextColour*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EndTextColour", header: wxh.}
proc beginAlignment*(this: var WxRichTextBuffer; alignment: WxTextAttrAlignment): bool {.
    cdecl, importcpp: "BeginAlignment", header: wxh.}
proc endAlignment*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EndAlignment", header: wxh.}
proc beginLeftIndent*(this: var WxRichTextBuffer; leftIndent: cint; 
                      leftSubIndent: cint = 0): bool {.cdecl, 
    importcpp: "BeginLeftIndent", header: wxh.}
proc endLeftIndent*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EndLeftIndent", header: wxh.}
proc beginRightIndent*(this: var WxRichTextBuffer; rightIndent: cint): bool {.
    cdecl, importcpp: "BeginRightIndent", header: wxh.}
proc endRightIndent*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EndRightIndent", header: wxh.}
proc beginParagraphSpacing*(this: var WxRichTextBuffer; before: cint; 
                            after: cint): bool {.cdecl, 
    importcpp: "BeginParagraphSpacing", header: wxh.}
proc endParagraphSpacing*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EndParagraphSpacing", header: wxh.}
proc beginLineSpacing*(this: var WxRichTextBuffer; lineSpacing: cint): bool {.
    cdecl, importcpp: "BeginLineSpacing", header: wxh.}
proc endLineSpacing*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EndLineSpacing", header: wxh.}
proc beginNumberedBullet*(this: var WxRichTextBuffer; bulletNumber: cint; 
                          leftIndent: cint; leftSubIndent: cint): bool {.cdecl, 
    importcpp: "BeginNumberedBullet", header: wxh.}
proc endNumberedBullet*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EndNumberedBullet", header: wxh.}
proc beginSymbolBullet*(this: var WxRichTextBuffer; symbol: WxString; 
                        leftIndent: cint; leftSubIndent: cint): bool {.cdecl, 
    importcpp: "BeginSymbolBullet", header: wxh.}
proc endSymbolBullet*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EndSymbolBullet", header: wxh.}
proc beginStandardBullet*(this: var WxRichTextBuffer; bulletName: WxString; 
                          leftIndent: cint; leftSubIndent: cint): bool {.cdecl, 
    importcpp: "BeginStandardBullet", header: wxh.}
proc endStandardBullet*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EndStandardBullet", header: wxh.}
proc beginCharacterStyle*(this: var WxRichTextBuffer; characterStyle: WxString): bool {.
    cdecl, importcpp: "BeginCharacterStyle", header: wxh.}
proc endCharacterStyle*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EndCharacterStyle", header: wxh.}
proc beginParagraphStyle*(this: var WxRichTextBuffer; paragraphStyle: WxString): bool {.
    cdecl, importcpp: "BeginParagraphStyle", header: wxh.}
proc endParagraphStyle*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EndParagraphStyle", header: wxh.}
proc beginListStyle*(this: var WxRichTextBuffer; listStyle: WxString; 
                     level: cint = 1; number: cint = 1): bool {.cdecl, 
    importcpp: "BeginListStyle", header: wxh.}
proc endListStyle*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EndListStyle", header: wxh.}
proc beginURL*(this: var WxRichTextBuffer; url: WxString; 
               characterStyle: WxString = wxEmptyString): bool {.cdecl, 
    importcpp: "BeginURL", header: wxh.}
proc endURL*(this: var WxRichTextBuffer): bool {.cdecl, importcpp: "EndURL", 
    header: wxh.}
proc addEventHandler*(this: var WxRichTextBuffer; handler: ptr WxEvtHandler): bool {.
    discardable, cdecl, importcpp: "AddEventHandler", header: wxh.}
proc removeEventHandler*(this: var WxRichTextBuffer; handler: ptr WxEvtHandler; 
                         deleteHandler: bool = false): bool {.cdecl, 
    importcpp: "RemoveEventHandler", header: wxh.}
proc clearEventHandlers*(this: var WxRichTextBuffer) {.cdecl, 
    importcpp: "ClearEventHandlers", header: wxh.}
proc sendEvent*(this: var WxRichTextBuffer; event: var WxEvent; 
                sendToAll: bool = true): bool {.cdecl, importcpp: "SendEvent", 
    header: wxh.}
proc hitTest*(this: var WxRichTextBuffer; dc: var WxDC; 
              context: var WxRichTextDrawingContext; pt: WxPoint; 
              textPosition: var clong; obj: ptr ptr WxRichTextObject; 
              contextObj: ptr ptr WxRichTextObject; flags: cint = 0): cint {.
    cdecl, importcpp: "HitTest", header: wxh.}
proc copy*(this: var WxRichTextBuffer; obj: WxRichTextBuffer) {.cdecl, 
    importcpp: "Copy", header: wxh.}
proc clone*(this: WxRichTextBuffer): ptr WxRichTextObject {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}
proc insertParagraphsWithUndo*(this: var WxRichTextBuffer; pos: clong; 
                               paragraphs: WxRichTextParagraphLayoutBox; 
                               ctrl: ptr WxRichTextCtrl; flags: cint = 0): bool {.
    cdecl, importcpp: "InsertParagraphsWithUndo", header: wxh.}
proc insertTextWithUndo*(this: var WxRichTextBuffer; pos: clong; text: WxString; 
                         ctrl: ptr WxRichTextCtrl; flags: cint = 0): bool {.
    cdecl, importcpp: "InsertTextWithUndo", header: wxh.}
proc insertNewlineWithUndo*(this: var WxRichTextBuffer; pos: clong; 
                            ctrl: ptr WxRichTextCtrl; flags: cint = 0): bool {.
    cdecl, importcpp: "InsertNewlineWithUndo", header: wxh.}
proc insertImageWithUndo*(this: var WxRichTextBuffer; pos: clong; 
                          imageBlock: WxRichTextImageBlock; 
                          ctrl: ptr WxRichTextCtrl; flags: cint = 0; 
                          textAttr: WxRichTextAttr = constructWxRichTextAttr()): bool {.
    cdecl, importcpp: "InsertImageWithUndo", header: wxh.}
proc insertObjectWithUndo*(this: var WxRichTextBuffer; pos: clong; 
                           `object`: ptr WxRichTextObject; 
                           ctrl: ptr WxRichTextCtrl; flags: cint): ptr WxRichTextObject {.
    cdecl, importcpp: "InsertObjectWithUndo", header: wxh.}
proc deleteRangeWithUndo*(this: var WxRichTextBuffer; range: WxRichTextRange; 
                          ctrl: ptr WxRichTextCtrl): bool {.cdecl, 
    importcpp: "DeleteRangeWithUndo", header: wxh.}
proc modify*(this: var WxRichTextBuffer; modify: bool = true) {.cdecl, 
    importcpp: "Modify", header: wxh.}
proc isModified*(this: WxRichTextBuffer): bool {.noSideEffect, cdecl, 
    importcpp: "IsModified", header: wxh.}
proc findHandler*(name: WxString): ptr WxRichTextFileHandler {.cdecl, 
    importcpp: "wxRichTextBuffer::FindHandler(@)", header: wxh.}
proc findHandler*(extension: WxString; imageType: WxRichTextFileType): ptr WxRichTextFileHandler {.
    cdecl, importcpp: "wxRichTextBuffer::FindHandler(@)", header: wxh.}
proc findHandlerFilenameOrType*(filename: WxString; 
                                imageType: WxRichTextFileType): ptr WxRichTextFileHandler {.
    cdecl, importcpp: "wxRichTextBuffer::FindHandlerFilenameOrType(@)", 
    header: wxh.}
proc findHandler*(imageType: WxRichTextFileType): ptr WxRichTextFileHandler {.
    cdecl, importcpp: "wxRichTextBuffer::FindHandler(@)", header: wxh.}
proc getExtWildcard*(combine: bool = false; save: bool = false; 
                     types: ptr WxArrayInt = nil): WxString {.cdecl, 
    importcpp: "wxRichTextBuffer::GetExtWildcard(@)", header: wxh.}
proc cleanUpHandlers*() {.cdecl, 
                          importcpp: "wxRichTextBuffer::CleanUpHandlers(@)", 
                          header: wxh.}
proc initStandardHandlers*() {.cdecl, importcpp: "wxRichTextBuffer::InitStandardHandlers(@)", 
                               header: wxh.}
proc getDrawingHandlers*(): var WxList {.cdecl, 
    importcpp: "wxRichTextBuffer::GetDrawingHandlers(@)", header: wxh.}
proc addDrawingHandler*(handler: ptr WxRichTextDrawingHandler) {.cdecl, 
    importcpp: "wxRichTextBuffer::AddDrawingHandler(@)", header: wxh.}
proc insertDrawingHandler*(handler: ptr WxRichTextDrawingHandler) {.cdecl, 
    importcpp: "wxRichTextBuffer::InsertDrawingHandler(@)", header: wxh.}
proc removeDrawingHandler*(name: WxString): bool {.cdecl, 
    importcpp: "wxRichTextBuffer::RemoveDrawingHandler(@)", header: wxh.}
proc findDrawingHandler*(name: WxString): ptr WxRichTextDrawingHandler {.cdecl, 
    importcpp: "wxRichTextBuffer::FindDrawingHandler(@)", header: wxh.}
proc cleanUpDrawingHandlers*() {.cdecl, importcpp: "wxRichTextBuffer::CleanUpDrawingHandlers(@)", 
                                 header: wxh.}
proc addFieldType*(fieldType: ptr WxRichTextFieldType) {.cdecl, 
    importcpp: "wxRichTextBuffer::AddFieldType(@)", header: wxh.}
proc removeFieldType*(name: WxString): bool {.cdecl, 
    importcpp: "wxRichTextBuffer::RemoveFieldType(@)", header: wxh.}
proc findFieldType*(name: WxString): ptr WxRichTextFieldType {.cdecl, 
    importcpp: "wxRichTextBuffer::FindFieldType(@)", header: wxh.}
proc cleanUpFieldTypes*() {.cdecl, importcpp: "wxRichTextBuffer::CleanUpFieldTypes(@)", 
                            header: wxh.}
proc getRenderer*(): ptr WxRichTextRenderer {.cdecl, 
    importcpp: "wxRichTextBuffer::GetRenderer(@)", header: wxh.}
proc setRenderer*(renderer: ptr WxRichTextRenderer) {.cdecl, 
    importcpp: "wxRichTextBuffer::SetRenderer(@)", header: wxh.}
proc getBulletRightMargin*(): cint {.cdecl, importcpp: "wxRichTextBuffer::GetBulletRightMargin(@)", 
                                     header: wxh.}
proc setBulletRightMargin*(margin: cint) {.cdecl, 
    importcpp: "wxRichTextBuffer::SetBulletRightMargin(@)", header: wxh.}
proc getBulletProportion*(): cfloat {.cdecl, importcpp: "wxRichTextBuffer::GetBulletProportion(@)", 
                                      header: wxh.}
proc setBulletProportion*(prop: cfloat) {.cdecl, 
    importcpp: "wxRichTextBuffer::SetBulletProportion(@)", header: wxh.}
proc getScale*(this: WxRichTextBuffer): cdouble {.noSideEffect, cdecl, 
    importcpp: "GetScale", header: wxh.}
proc setScale*(this: var WxRichTextBuffer; scale: cdouble) {.cdecl, 
    importcpp: "SetScale", header: wxh.}
proc setFloatingLayoutMode*(mode: bool) {.cdecl, 
    importcpp: "wxRichTextBuffer::SetFloatingLayoutMode(@)", header: wxh.}
proc getFloatingLayoutMode*(): bool {.cdecl, importcpp: "wxRichTextBuffer::GetFloatingLayoutMode(@)", 
                                      header: wxh.}

type 
  WxRichTextCell* {.importcpp: "wxRichTextCell", header: wxh.} = object of WxRichTextBox
  

proc constructwxRichTextCell*(parent: ptr WxRichTextObject = nil): WxRichTextCell {.
    cdecl, constructor, importcpp: "wxRichTextCell(@)", header: wxh.}
proc constructwxRichTextCell*(obj: WxRichTextCell): WxRichTextCell {.cdecl, 
    constructor, importcpp: "wxRichTextCell(@)", header: wxh.}
proc draw*(this: var WxRichTextCell; dc: var WxDC; 
           context: var WxRichTextDrawingContext; range: WxRichTextRange; 
           selection: WxRichTextSelection; rect: WxRect; descent: cint; 
           style: cint): bool {.cdecl, importcpp: "Draw", header: wxh.}
proc hitTest*(this: var WxRichTextCell; dc: var WxDC; 
              context: var WxRichTextDrawingContext; pt: WxPoint; 
              textPosition: var clong; obj: ptr ptr WxRichTextObject; 
              contextObj: ptr ptr WxRichTextObject; flags: cint = 0): cint {.
    cdecl, importcpp: "HitTest", header: wxh.}
proc adjustAttributes*(this: var WxRichTextCell; attr: var WxRichTextAttr; 
                       context: var WxRichTextDrawingContext): bool {.cdecl, 
    importcpp: "AdjustAttributes", header: wxh.}
proc getXMLNodeName*(this: WxRichTextCell): WxString {.noSideEffect, cdecl, 
    importcpp: "GetXMLNodeName", header: wxh.}
proc canEditProperties*(this: WxRichTextCell): bool {.noSideEffect, cdecl, 
    importcpp: "CanEditProperties", header: wxh.}
proc editProperties*(this: var WxRichTextCell; parent: ptr WxWindow; 
                     buffer: ptr WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EditProperties", header: wxh.}
proc getPropertiesMenuLabel*(this: WxRichTextCell): WxString {.noSideEffect, 
    cdecl, importcpp: "GetPropertiesMenuLabel", header: wxh.}
proc getColSpan*(this: WxRichTextCell): cint {.noSideEffect, cdecl, 
    importcpp: "GetColSpan", header: wxh.}
proc setColSpan*(this: var WxRichTextCell; span: clong) {.cdecl, 
    importcpp: "SetColSpan", header: wxh.}
proc getRowSpan*(this: WxRichTextCell): cint {.noSideEffect, cdecl, 
    importcpp: "GetRowSpan", header: wxh.}
proc setRowSpan*(this: var WxRichTextCell; span: clong) {.cdecl, 
    importcpp: "SetRowSpan", header: wxh.}
proc clone*(this: WxRichTextCell): ptr WxRichTextObject {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}
proc copy*(this: var WxRichTextCell; obj: WxRichTextCell) {.cdecl, 
    importcpp: "Copy", header: wxh.}

type 
  WxRichTextTable* {.importcpp: "wxRichTextTable", header: wxh.} = object of WxRichTextBox
  

proc constructwxRichTextTable*(parent: ptr WxRichTextObject = nil): WxRichTextTable {.
    cdecl, constructor, importcpp: "wxRichTextTable(@)", header: wxh.}
proc constructwxRichTextTable*(obj: WxRichTextTable): WxRichTextTable {.cdecl, 
    constructor, importcpp: "wxRichTextTable(@)", header: wxh.}
proc draw*(this: var WxRichTextTable; dc: var WxDC; 
           context: var WxRichTextDrawingContext; range: WxRichTextRange; 
           selection: WxRichTextSelection; rect: WxRect; descent: cint; 
           style: cint): bool {.cdecl, importcpp: "Draw", header: wxh.}
proc hitTest*(this: var WxRichTextTable; dc: var WxDC; 
              context: var WxRichTextDrawingContext; pt: WxPoint; 
              textPosition: var clong; obj: ptr ptr WxRichTextObject; 
              contextObj: ptr ptr WxRichTextObject; flags: cint = 0): cint {.
    cdecl, importcpp: "HitTest", header: wxh.}
proc adjustAttributes*(this: var WxRichTextTable; attr: var WxRichTextAttr; 
                       context: var WxRichTextDrawingContext): bool {.cdecl, 
    importcpp: "AdjustAttributes", header: wxh.}
proc getXMLNodeName*(this: WxRichTextTable): WxString {.noSideEffect, cdecl, 
    importcpp: "GetXMLNodeName", header: wxh.}
proc layout*(this: var WxRichTextTable; dc: var WxDC; 
             context: var WxRichTextDrawingContext; rect: WxRect; 
             parentRect: WxRect; style: cint): bool {.cdecl, 
    importcpp: "Layout", header: wxh.}
proc getRangeSize*(this: WxRichTextTable; range: WxRichTextRange; 
                   size: var WxSize; descent: var cint; dc: var WxDC; 
                   context: var WxRichTextDrawingContext; flags: cint; 
                   position: WxPoint = constructWxPoint(0,0); 
                   parentSize: WxSize = wxDefaultSize; 
                   partialExtents: ptr WxArrayInt = nil): bool {.noSideEffect, 
    cdecl, importcpp: "GetRangeSize", header: wxh.}
proc deleteRange*(this: var WxRichTextTable; range: WxRichTextRange): bool {.
    cdecl, importcpp: "DeleteRange", header: wxh.}
proc getTextForRange*(this: WxRichTextTable; range: WxRichTextRange): WxString {.
    noSideEffect, cdecl, importcpp: "GetTextForRange", header: wxh.}
proc findPosition*(this: var WxRichTextTable; dc: var WxDC; 
                   context: var WxRichTextDrawingContext; index: clong; 
                   pt: var WxPoint; height: ptr cint; forceLineStart: bool): bool {.
    cdecl, importcpp: "FindPosition", header: wxh.}
proc calculateRange*(this: var WxRichTextTable; start: clong; `end`: var clong) {.
    cdecl, importcpp: "CalculateRange", header: wxh.}
proc handlesChildSelections*(this: WxRichTextTable): bool {.noSideEffect, cdecl, 
    importcpp: "HandlesChildSelections", header: wxh.}
proc getSelection*(this: WxRichTextTable; start: clong; `end`: clong): WxRichTextSelection {.
    noSideEffect, cdecl, importcpp: "GetSelection", header: wxh.}
proc canEditProperties*(this: WxRichTextTable): bool {.noSideEffect, cdecl, 
    importcpp: "CanEditProperties", header: wxh.}
proc editProperties*(this: var WxRichTextTable; parent: ptr WxWindow; 
                     buffer: ptr WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EditProperties", header: wxh.}
proc getPropertiesMenuLabel*(this: WxRichTextTable): WxString {.noSideEffect, 
    cdecl, importcpp: "GetPropertiesMenuLabel", header: wxh.}
proc acceptsFocus*(this: WxRichTextTable): bool {.noSideEffect, cdecl, 
    importcpp: "AcceptsFocus", header: wxh.}
proc getRowCount*(this: WxRichTextTable): cint {.noSideEffect, cdecl, 
    importcpp: "GetRowCount", header: wxh.}
proc setRowCount*(this: var WxRichTextTable; count: cint) {.cdecl, 
    importcpp: "SetRowCount", header: wxh.}
proc getColumnCount*(this: WxRichTextTable): cint {.noSideEffect, cdecl, 
    importcpp: "GetColumnCount", header: wxh.}
proc setColumnCount*(this: var WxRichTextTable; count: cint) {.cdecl, 
    importcpp: "SetColumnCount", header: wxh.}
proc getCell*(this: WxRichTextTable; row: cint; col: cint): ptr WxRichTextCell {.
    noSideEffect, cdecl, importcpp: "GetCell", header: wxh.}
proc getCell*(this: WxRichTextTable; pos: clong): ptr WxRichTextCell {.
    noSideEffect, cdecl, importcpp: "GetCell", header: wxh.}
proc getCellRowColumnPosition*(this: WxRichTextTable; pos: clong; row: var cint; 
                               col: var cint): bool {.noSideEffect, cdecl, 
    importcpp: "GetCellRowColumnPosition", header: wxh.}
proc getFocusedCell*(this: WxRichTextTable): WxPosition {.noSideEffect, cdecl, 
    importcpp: "GetFocusedCell", header: wxh.}
proc clearTable*(this: var WxRichTextTable) {.cdecl, importcpp: "ClearTable", 
    header: wxh.}
proc createTable*(this: var WxRichTextTable; rows: cint; cols: cint): bool {.
    cdecl, importcpp: "CreateTable", header: wxh.}
proc setCellStyle*(this: var WxRichTextTable; selection: WxRichTextSelection; 
                   style: WxRichTextAttr; 
                   flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO): bool {.
    discardable, cdecl, importcpp: "SetCellStyle", header: wxh.}
proc deleteRows*(this: var WxRichTextTable; startRow: cint; noRows: cint = 1): bool {.
    cdecl, importcpp: "DeleteRows", header: wxh.}
proc deleteColumns*(this: var WxRichTextTable; startCol: cint; noCols: cint = 1): bool {.
    cdecl, importcpp: "DeleteColumns", header: wxh.}
proc addRows*(this: var WxRichTextTable; startRow: cint; noRows: cint = 1; 
              attr: WxRichTextAttr = constructWxRichTextAttr()): bool {.
    discardable, cdecl, importcpp: "AddRows", header: wxh.}
proc addColumns*(this: var WxRichTextTable; startCol: cint; noCols: cint = 1; 
                 attr: WxRichTextAttr = constructWxRichTextAttr()): bool {.
    discardable, cdecl, importcpp: "AddColumns", header: wxh.}
proc clone*(this: WxRichTextTable): ptr WxRichTextObject {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}
proc copy*(this: var WxRichTextTable; obj: WxRichTextTable) {.cdecl, 
    importcpp: "Copy", header: wxh.}

type 
  WxRichTextTableBlock* {.importcpp: "wxRichTextTableBlock", header: wxh.} = object 
    mColStart* {.importc: "m_colStart".}: cint
    mColEnd* {.importc: "m_colEnd".}: cint
    mRowStart* {.importc: "m_rowStart".}: cint
    mRowEnd* {.importc: "m_rowEnd".}: cint


proc constructwxRichTextTableBlock*(): WxRichTextTableBlock {.cdecl, 
    constructor, importcpp: "wxRichTextTableBlock(@)", header: wxh.}
proc constructwxRichTextTableBlock*(colStart: cint; colEnd: cint; 
                                    rowStart: cint; rowEnd: cint): WxRichTextTableBlock {.
    cdecl, constructor, importcpp: "wxRichTextTableBlock(@)", header: wxh.}
proc constructwxRichTextTableBlock*(`block`: WxRichTextTableBlock): WxRichTextTableBlock {.
    cdecl, constructor, importcpp: "wxRichTextTableBlock(@)", header: wxh.}
proc init*(this: var WxRichTextTableBlock) {.cdecl, importcpp: "Init", 
    header: wxh.}
proc copy*(this: var WxRichTextTableBlock; `block`: WxRichTextTableBlock) {.
    cdecl, importcpp: "Copy", header: wxh.}
proc `==`*(this: var WxRichTextTableBlock; `block`: WxRichTextTableBlock): bool {.
    cdecl, importcpp: "(# == #)", header: wxh.}
proc computeBlockForSelection*(this: var WxRichTextTableBlock; 
                               table: ptr WxRichTextTable; 
                               ctrl: ptr WxRichTextCtrl; 
                               requireCellSelection: bool = true): bool {.cdecl, 
    importcpp: "ComputeBlockForSelection", header: wxh.}
proc isWholeTable*(this: WxRichTextTableBlock; table: ptr WxRichTextTable): bool {.
    noSideEffect, cdecl, importcpp: "IsWholeTable", header: wxh.}
proc getFocusedCell*(ctrl: ptr WxRichTextCtrl): ptr WxRichTextCell {.cdecl, 
    importcpp: "wxRichTextTableBlock::GetFocusedCell(@)", header: wxh.}
proc colStart*(this: var WxRichTextTableBlock): var cint {.cdecl, 
    importcpp: "ColStart", header: wxh.}
proc colStart*(this: WxRichTextTableBlock): cint {.noSideEffect, cdecl, 
    importcpp: "ColStart", header: wxh.}
proc colEnd*(this: var WxRichTextTableBlock): var cint {.cdecl, 
    importcpp: "ColEnd", header: wxh.}
proc colEnd*(this: WxRichTextTableBlock): cint {.noSideEffect, cdecl, 
    importcpp: "ColEnd", header: wxh.}
proc rowStart*(this: var WxRichTextTableBlock): var cint {.cdecl, 
    importcpp: "RowStart", header: wxh.}
proc rowStart*(this: WxRichTextTableBlock): cint {.noSideEffect, cdecl, 
    importcpp: "RowStart", header: wxh.}
proc rowEnd*(this: var WxRichTextTableBlock): var cint {.cdecl, 
    importcpp: "RowEnd", header: wxh.}
proc rowEnd*(this: WxRichTextTableBlock): cint {.noSideEffect, cdecl, 
    importcpp: "RowEnd", header: wxh.}

type 
  WxRichTextCommandId* {.size: sizeof(cint), 
                         importcpp: "wxRichTextAction::wxRichTextCommandId", 
                         header: wxh.} = enum 
    wxRICHTEXT_INSERT, wxRICHTEXT_DELETE, wxRICHTEXT_CHANGE_ATTRIBUTES, 
    wxRICHTEXT_CHANGE_STYLE, wxRICHTEXT_CHANGE_PROPERTIES, 
    wxRICHTEXT_CHANGE_OBJECT



type 
  WxRichTextObjectAddress* {.importcpp: "wxRichTextObjectAddress", header: wxh.} = object 
  

proc constructwxRichTextObjectAddress*(topLevelContainer: ptr WxRichTextParagraphLayoutBox; 
                                       obj: ptr WxRichTextObject): WxRichTextObjectAddress {.
    cdecl, constructor, importcpp: "wxRichTextObjectAddress(@)", header: wxh.}
proc constructwxRichTextObjectAddress*(): WxRichTextObjectAddress {.cdecl, 
    constructor, importcpp: "wxRichTextObjectAddress(@)", header: wxh.}
proc constructwxRichTextObjectAddress*(address: WxRichTextObjectAddress): WxRichTextObjectAddress {.
    cdecl, constructor, importcpp: "wxRichTextObjectAddress(@)", header: wxh.}
proc init*(this: var WxRichTextObjectAddress) {.cdecl, importcpp: "Init", 
    header: wxh.}
proc copy*(this: var WxRichTextObjectAddress; address: WxRichTextObjectAddress) {.
    cdecl, importcpp: "Copy", header: wxh.}
proc getObject*(this: WxRichTextObjectAddress; 
                topLevelContainer: ptr WxRichTextParagraphLayoutBox): ptr WxRichTextObject {.
    noSideEffect, cdecl, importcpp: "GetObject", header: wxh.}
proc create*(this: var WxRichTextObjectAddress; 
             topLevelContainer: ptr WxRichTextParagraphLayoutBox; 
             obj: ptr WxRichTextObject): bool {.cdecl, importcpp: "Create", 
    header: wxh.}
proc getAddress*(this: var WxRichTextObjectAddress): var WxArrayInt {.cdecl, 
    importcpp: "GetAddress", header: wxh.}
proc getAddress*(this: WxRichTextObjectAddress): WxArrayInt {.noSideEffect, 
    cdecl, importcpp: "GetAddress", header: wxh.}
proc setAddress*(this: var WxRichTextObjectAddress; address: WxArrayInt) {.
    cdecl, importcpp: "SetAddress", header: wxh.}
discard "forward decl of wxRichTextAction"
type 
  WxRichTextCommand* {.importcpp: "wxRichTextCommand", header: wxh.} = object of WxCommand
  

proc constructwxRichTextCommand*(name: WxString; id: WxRichTextCommandId; 
                                 buffer: ptr WxRichTextBuffer; 
                                 container: ptr WxRichTextParagraphLayoutBox; 
                                 ctrl: ptr WxRichTextCtrl; 
                                 ignoreFirstTime: bool = false): WxRichTextCommand {.
    cdecl, constructor, importcpp: "wxRichTextCommand(@)", header: wxh.}
proc constructwxRichTextCommand*(name: WxString): WxRichTextCommand {.cdecl, 
    constructor, importcpp: "wxRichTextCommand(@)", header: wxh.}
proc destroywxRichTextCommand*(this: var WxRichTextCommand) {.cdecl, 
    importcpp: "#.~wxRichTextCommand()", header: wxh.}
proc `do`*(this: var WxRichTextCommand): bool {.cdecl, importcpp: "Do", 
    header: wxh.}
proc undo*(this: var WxRichTextCommand): bool {.cdecl, importcpp: "Undo", 
    header: wxh.}
proc addAction*(this: var WxRichTextCommand; action: ptr WxRichTextAction) {.
    cdecl, importcpp: "AddAction", header: wxh.}
proc clearActions*(this: var WxRichTextCommand) {.cdecl, 
    importcpp: "ClearActions", header: wxh.}
proc getActions*(this: var WxRichTextCommand): var WxList {.cdecl, 
    importcpp: "GetActions", header: wxh.}

type 
  WxRichTextAction* {.importcpp: "wxRichTextAction", header: wxh.} = object of WxObject
  

proc constructwxRichTextAction*(cmd: ptr WxRichTextCommand; name: WxString; 
                                id: WxRichTextCommandId; 
                                buffer: ptr WxRichTextBuffer; 
                                container: ptr WxRichTextParagraphLayoutBox; 
                                ctrl: ptr WxRichTextCtrl; 
                                ignoreFirstTime: bool = false): WxRichTextAction {.
    cdecl, constructor, importcpp: "wxRichTextAction(@)", header: wxh.}
proc destroywxRichTextAction*(this: var WxRichTextAction) {.cdecl, 
    importcpp: "#.~wxRichTextAction()", header: wxh.}
proc `do`*(this: var WxRichTextAction): bool {.cdecl, importcpp: "Do", 
    header: wxh.}
proc undo*(this: var WxRichTextAction): bool {.cdecl, importcpp: "Undo", 
    header: wxh.}
proc updateAppearance*(this: var WxRichTextAction; caretPosition: clong; 
                       sendUpdateEvent: bool = false; 
                       optimizationLineCharPositions: ptr WxArrayInt = nil; 
                       optimizationLineYPositions: ptr WxArrayInt = nil; 
                       isDoCmd: bool = true) {.cdecl, 
    importcpp: "UpdateAppearance", header: wxh.}
proc applyParagraphs*(this: var WxRichTextAction; 
                      fragment: WxRichTextParagraphLayoutBox) {.cdecl, 
    importcpp: "ApplyParagraphs", header: wxh.}
proc getNewParagraphs*(this: var WxRichTextAction): var WxRichTextParagraphLayoutBox {.
    cdecl, importcpp: "GetNewParagraphs", header: wxh.}
proc getOldParagraphs*(this: var WxRichTextAction): var WxRichTextParagraphLayoutBox {.
    cdecl, importcpp: "GetOldParagraphs", header: wxh.}
proc getAttributes*(this: var WxRichTextAction): var WxRichTextAttr {.cdecl, 
    importcpp: "GetAttributes", header: wxh.}
proc getObject*(this: WxRichTextAction): ptr WxRichTextObject {.noSideEffect, 
    cdecl, importcpp: "GetObject", header: wxh.}
proc storeObject*(this: var WxRichTextAction; obj: ptr WxRichTextObject) {.
    cdecl, importcpp: "StoreObject", header: wxh.}
proc setObject*(this: var WxRichTextAction; obj: ptr WxRichTextObject) {.cdecl, 
    importcpp: "SetObject", header: wxh.}
proc makeObject*(this: var WxRichTextAction; obj: ptr WxRichTextObject) {.cdecl, 
    importcpp: "MakeObject", header: wxh.}
proc setOldAndNewObjects*(this: var WxRichTextAction; 
                          oldObj: ptr WxRichTextObject; 
                          newObj: ptr WxRichTextObject) {.cdecl, 
    importcpp: "SetOldAndNewObjects", header: wxh.}
proc calculateRefreshOptimizations*(this: var WxRichTextAction; 
    optimizationLineCharPositions: var WxArrayInt; 
                                    optimizationLineYPositions: var WxArrayInt) {.
    cdecl, importcpp: "CalculateRefreshOptimizations", header: wxh.}
proc setPosition*(this: var WxRichTextAction; pos: clong) {.cdecl, 
    importcpp: "SetPosition", header: wxh.}
proc getPosition*(this: WxRichTextAction): clong {.noSideEffect, cdecl, 
    importcpp: "GetPosition", header: wxh.}
proc setRange*(this: var WxRichTextAction; range: WxRichTextRange) {.cdecl, 
    importcpp: "SetRange", header: wxh.}
proc getRange*(this: WxRichTextAction): WxRichTextRange {.noSideEffect, cdecl, 
    importcpp: "GetRange", header: wxh.}
proc getContainerAddress*(this: var WxRichTextAction): var WxRichTextObjectAddress {.
    cdecl, importcpp: "GetContainerAddress", header: wxh.}
proc getContainerAddress*(this: WxRichTextAction): WxRichTextObjectAddress {.
    noSideEffect, cdecl, importcpp: "GetContainerAddress", header: wxh.}
proc setContainerAddress*(this: var WxRichTextAction; 
                          address: WxRichTextObjectAddress) {.cdecl, 
    importcpp: "SetContainerAddress", header: wxh.}
proc setContainerAddress*(this: var WxRichTextAction; 
                          container: ptr WxRichTextParagraphLayoutBox; 
                          obj: ptr WxRichTextObject) {.cdecl, 
    importcpp: "SetContainerAddress", header: wxh.}
proc getContainer*(this: WxRichTextAction): ptr WxRichTextParagraphLayoutBox {.
    noSideEffect, cdecl, importcpp: "GetContainer", header: wxh.}
proc getName*(this: WxRichTextAction): WxString {.noSideEffect, cdecl, 
    importcpp: "GetName", header: wxh.}
proc setIgnoreFirstTime*(this: var WxRichTextAction; b: bool) {.cdecl, 
    importcpp: "SetIgnoreFirstTime", header: wxh.}
proc getIgnoreFirstTime*(this: WxRichTextAction): bool {.noSideEffect, cdecl, 
    importcpp: "GetIgnoreFirstTime", header: wxh.}

const 
  wxRICHTEXT_HANDLER_INCLUDE_STYLESHEET* = 0x00000001


const 
  wxRICHTEXT_HANDLER_SAVE_IMAGES_TO_MEMORY* = 0x00000010


const 
  wxRICHTEXT_HANDLER_SAVE_IMAGES_TO_FILES* = 0x00000020


const 
  wxRICHTEXT_HANDLER_SAVE_IMAGES_TO_BASE64* = 0x00000040


const 
  wxRICHTEXT_HANDLER_NO_HEADER_FOOTER* = 0x00000080


const 
  wxRICHTEXT_HANDLER_CONVERT_FACENAMES* = 0x00000100


type 
  WxRichTextFileHandler* {.importcpp: "wxRichTextFileHandler", header: wxh.} = object of WxObject
  

proc constructwxRichTextFileHandler*(name: WxString = wxEmptyString; 
                                     ext: WxString = wxEmptyString; 
                                     `type`: cint = 0): WxRichTextFileHandler {.
    cdecl, constructor, importcpp: "wxRichTextFileHandler(@)", header: wxh.}
proc loadFile*(this: var WxRichTextFileHandler; buffer: ptr WxRichTextBuffer; 
               filename: WxString): bool {.cdecl, importcpp: "LoadFile", 
    header: wxh.}
proc saveFile*(this: var WxRichTextFileHandler; buffer: ptr WxRichTextBuffer; 
               filename: WxString): bool {.cdecl, importcpp: "SaveFile", 
    header: wxh.}
proc canHandle*(this: WxRichTextFileHandler; filename: WxString): bool {.
    noSideEffect, cdecl, importcpp: "CanHandle", header: wxh.}
proc canSave*(this: WxRichTextFileHandler): bool {.noSideEffect, cdecl, 
    importcpp: "CanSave", header: wxh.}
proc canLoad*(this: WxRichTextFileHandler): bool {.noSideEffect, cdecl, 
    importcpp: "CanLoad", header: wxh.}
proc isVisible*(this: WxRichTextFileHandler): bool {.noSideEffect, cdecl, 
    importcpp: "IsVisible", header: wxh.}
proc setVisible*(this: var WxRichTextFileHandler; visible: bool) {.cdecl, 
    importcpp: "SetVisible", header: wxh.}
proc setName*(this: var WxRichTextFileHandler; name: WxString) {.cdecl, 
    importcpp: "SetName", header: wxh.}
proc getName*(this: WxRichTextFileHandler): WxString {.noSideEffect, cdecl, 
    importcpp: "GetName", header: wxh.}
proc setExtension*(this: var WxRichTextFileHandler; ext: WxString) {.cdecl, 
    importcpp: "SetExtension", header: wxh.}
proc getExtension*(this: WxRichTextFileHandler): WxString {.noSideEffect, cdecl, 
    importcpp: "GetExtension", header: wxh.}
proc setType*(this: var WxRichTextFileHandler; `type`: cint) {.cdecl, 
    importcpp: "SetType", header: wxh.}
proc getType*(this: WxRichTextFileHandler): cint {.noSideEffect, cdecl, 
    importcpp: "GetType", header: wxh.}
proc setFlags*(this: var WxRichTextFileHandler; flags: cint) {.cdecl, 
    importcpp: "SetFlags", header: wxh.}
proc getFlags*(this: WxRichTextFileHandler): cint {.noSideEffect, cdecl, 
    importcpp: "GetFlags", header: wxh.}
proc setEncoding*(this: var WxRichTextFileHandler; encoding: WxString) {.cdecl, 
    importcpp: "SetEncoding", header: wxh.}
proc getEncoding*(this: WxRichTextFileHandler): WxString {.noSideEffect, cdecl, 
    importcpp: "GetEncoding", header: wxh.}

type 
  WxRichTextPlainTextHandler* {.importcpp: "wxRichTextPlainTextHandler", 
                                header: wxh.} = object of WxRichTextFileHandler
  

proc constructwxRichTextPlainTextHandler*(name: WxString = "Text"; 
    ext: WxString = "txt"; `type`: WxRichTextFileType = wxRICHTEXT_TYPE_TEXT): WxRichTextPlainTextHandler {.
    cdecl, constructor, importcpp: "wxRichTextPlainTextHandler(@)", header: wxh.}
proc canSave*(this: WxRichTextPlainTextHandler): bool {.noSideEffect, cdecl, 
    importcpp: "CanSave", header: wxh.}
proc canLoad*(this: WxRichTextPlainTextHandler): bool {.noSideEffect, cdecl, 
    importcpp: "CanLoad", header: wxh.}

type 
  WxRichTextDrawingHandler* {.importcpp: "wxRichTextDrawingHandler", header: wxh.} = object of WxObject
  

proc constructwxRichTextDrawingHandler*(name: WxString = wxEmptyString): WxRichTextDrawingHandler {.
    cdecl, constructor, importcpp: "wxRichTextDrawingHandler(@)", header: wxh.}
proc hasVirtualAttributes*(this: WxRichTextDrawingHandler; 
                           obj: ptr WxRichTextObject): bool {.noSideEffect, 
    cdecl, importcpp: "HasVirtualAttributes", header: wxh.}
proc getVirtualAttributes*(this: WxRichTextDrawingHandler; 
                           attr: var WxRichTextAttr; obj: ptr WxRichTextObject): bool {.
    noSideEffect, cdecl, importcpp: "GetVirtualAttributes", header: wxh.}
proc getVirtualSubobjectAttributesCount*(this: WxRichTextDrawingHandler; 
    obj: ptr WxRichTextObject): cint {.noSideEffect, cdecl, importcpp: "GetVirtualSubobjectAttributesCount", 
                                       header: wxh.}
proc hasVirtualText*(this: WxRichTextDrawingHandler; 
                     obj: ptr WxRichTextPlainText): bool {.noSideEffect, cdecl, 
    importcpp: "HasVirtualText", header: wxh.}
proc getVirtualText*(this: WxRichTextDrawingHandler; 
                     obj: ptr WxRichTextPlainText; text: var WxString): bool {.
    noSideEffect, cdecl, importcpp: "GetVirtualText", header: wxh.}
proc setName*(this: var WxRichTextDrawingHandler; name: WxString) {.cdecl, 
    importcpp: "SetName", header: wxh.}
proc getName*(this: WxRichTextDrawingHandler): WxString {.noSideEffect, cdecl, 
    importcpp: "GetName", header: wxh.}

type 
  WxRichTextBufferDataObject* {.importcpp: "wxRichTextBufferDataObject", 
                                header: wxh.} = object of WxDataObjectSimple
  

proc constructwxRichTextBufferDataObject*(
    richTextBuffer: ptr WxRichTextBuffer = nil): WxRichTextBufferDataObject {.
    cdecl, constructor, importcpp: "wxRichTextBufferDataObject(@)", header: wxh.}
proc destroywxRichTextBufferDataObject*(this: var WxRichTextBufferDataObject) {.
    cdecl, importcpp: "#.~wxRichTextBufferDataObject()", header: wxh.}
proc getRichTextBuffer*(this: var WxRichTextBufferDataObject): ptr WxRichTextBuffer {.
    cdecl, importcpp: "GetRichTextBuffer", header: wxh.}
proc getRichTextBufferFormatId*(): ptr WxChar {.cdecl, 
    importcpp: "wxRichTextBufferDataObject::GetRichTextBufferFormatId(@)", 
    header: wxh.}
proc getPreferredFormat*(this: WxRichTextBufferDataObject; dir: Direction): WxDataFormat {.
    noSideEffect, cdecl, importcpp: "GetPreferredFormat", header: wxh.}
proc getDataSize*(this: WxRichTextBufferDataObject): csize {.noSideEffect, 
    cdecl, importcpp: "GetDataSize", header: wxh.}
proc getDataHere*(this: WxRichTextBufferDataObject; pBuf: pointer): bool {.
    noSideEffect, cdecl, importcpp: "GetDataHere", header: wxh.}
proc setData*(this: var WxRichTextBufferDataObject; len: csize; buf: pointer): bool {.
    discardable, cdecl, importcpp: "SetData", header: wxh.}
proc getDataSize*(this: WxRichTextBufferDataObject; a3: WxDataFormat): csize {.
    noSideEffect, cdecl, importcpp: "GetDataSize", header: wxh.}
proc getDataHere*(this: WxRichTextBufferDataObject; a3: WxDataFormat; 
                  buf: pointer): bool {.noSideEffect, cdecl, 
                                        importcpp: "GetDataHere", header: wxh.}
proc setData*(this: var WxRichTextBufferDataObject; a3: WxDataFormat; 
              len: csize; buf: pointer): bool {.discardable, cdecl, 
    importcpp: "SetData", header: wxh.}

type 
  WxRichTextRenderer* {.importcpp: "wxRichTextRenderer", header: wxh.} = object of WxObject
  

proc constructwxRichTextRenderer*(): WxRichTextRenderer {.cdecl, constructor, 
    importcpp: "wxRichTextRenderer(@)", header: wxh.}
proc destroywxRichTextRenderer*(this: var WxRichTextRenderer) {.cdecl, 
    importcpp: "#.~wxRichTextRenderer()", header: wxh.}
proc drawStandardBullet*(this: var WxRichTextRenderer; 
                         paragraph: ptr WxRichTextParagraph; dc: var WxDC; 
                         attr: WxRichTextAttr; rect: WxRect): bool {.cdecl, 
    importcpp: "DrawStandardBullet", header: wxh.}
proc drawTextBullet*(this: var WxRichTextRenderer; 
                     paragraph: ptr WxRichTextParagraph; dc: var WxDC; 
                     attr: WxRichTextAttr; rect: WxRect; text: WxString): bool {.
    cdecl, importcpp: "DrawTextBullet", header: wxh.}
proc drawBitmapBullet*(this: var WxRichTextRenderer; 
                       paragraph: ptr WxRichTextParagraph; dc: var WxDC; 
                       attr: WxRichTextAttr; rect: WxRect): bool {.cdecl, 
    importcpp: "DrawBitmapBullet", header: wxh.}
proc enumerateStandardBulletNames*(this: var WxRichTextRenderer; 
                                   bulletNames: var WxArrayString): bool {.
    cdecl, importcpp: "EnumerateStandardBulletNames", header: wxh.}

type 
  WxRichTextStdRenderer* {.importcpp: "wxRichTextStdRenderer", header: wxh.} = object of WxRichTextRenderer
  

proc constructwxRichTextStdRenderer*(): WxRichTextStdRenderer {.cdecl, 
    constructor, importcpp: "wxRichTextStdRenderer(@)", header: wxh.}
proc drawStandardBullet*(this: var WxRichTextStdRenderer; 
                         paragraph: ptr WxRichTextParagraph; dc: var WxDC; 
                         attr: WxRichTextAttr; rect: WxRect): bool {.cdecl, 
    importcpp: "DrawStandardBullet", header: wxh.}
proc drawTextBullet*(this: var WxRichTextStdRenderer; 
                     paragraph: ptr WxRichTextParagraph; dc: var WxDC; 
                     attr: WxRichTextAttr; rect: WxRect; text: WxString): bool {.
    cdecl, importcpp: "DrawTextBullet", header: wxh.}
proc drawBitmapBullet*(this: var WxRichTextStdRenderer; 
                       paragraph: ptr WxRichTextParagraph; dc: var WxDC; 
                       attr: WxRichTextAttr; rect: WxRect): bool {.cdecl, 
    importcpp: "DrawBitmapBullet", header: wxh.}
proc enumerateStandardBulletNames*(this: var WxRichTextStdRenderer; 
                                   bulletNames: var WxArrayString): bool {.
    cdecl, importcpp: "EnumerateStandardBulletNames", header: wxh.}

proc wxRichTextHasStyle*(flags: cint; style: cint): bool {.cdecl, 
    importcpp: "wxRichTextHasStyle(@)", header: wxh.}

proc wxTextAttrEq*(attr1: WxRichTextAttr; attr2: WxRichTextAttr): bool {.cdecl, 
    importcpp: "wxTextAttrEq(@)", header: wxh.}

proc wxRichTextApplyStyle*(destStyle: var WxRichTextAttr; style: WxRichTextAttr; 
                           compareWith: ptr WxRichTextAttr = nil): bool {.cdecl, 
    importcpp: "wxRichTextApplyStyle(@)", header: wxh.}

proc wxRichTextRemoveStyle*(destStyle: var WxRichTextAttr; style: WxRichTextAttr): bool {.
    cdecl, importcpp: "wxRichTextRemoveStyle(@)", header: wxh.}

proc wxRichTextCombineBitlists*(valueA: var cint; valueB: cint; 
                                flagsA: var cint; flagsB: cint): bool {.cdecl, 
    importcpp: "wxRichTextCombineBitlists(@)", header: wxh.}

proc wxRichTextBitlistsEqPartial*(valueA: cint; valueB: cint; flags: cint): bool {.
    cdecl, importcpp: "wxRichTextBitlistsEqPartial(@)", header: wxh.}

proc wxRichTextSplitParaCharStyles*(style: WxRichTextAttr; 
                                    parStyle: var WxRichTextAttr; 
                                    charStyle: var WxRichTextAttr): bool {.
    cdecl, importcpp: "wxRichTextSplitParaCharStyles(@)", header: wxh.}

proc wxRichTextTabsEq*(tabs1: WxArrayInt; tabs2: WxArrayInt): bool {.cdecl, 
    importcpp: "wxRichTextTabsEq(@)", header: wxh.}

proc wxRichTextDecimalToRoman*(n: clong): WxString {.cdecl, 
    importcpp: "wxRichTextDecimalToRoman(@)", header: wxh.}

proc wxTextAttrCollectCommonAttributes*(currentStyle: var WxTextAttr; 
                                        attr: WxTextAttr; 
                                        clashingAttr: var WxTextAttr; 
                                        absentAttr: var WxTextAttr) {.cdecl, 
    importcpp: "wxTextAttrCollectCommonAttributes(@)", header: wxh.}
proc wxRichTextModuleInit*() {.cdecl, importcpp: "wxRichTextModuleInit(@)", 
                               header: wxh.}

