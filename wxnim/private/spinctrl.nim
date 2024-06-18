#{.emit: "#include <wx/spinctrl.h>".}
const wxsctrlh = wxh & "\n#include <wx/spinctrl.h>"

discard "forward decl of wxSpinDoubleEvent"
var wxEVT_SPINCTRL* {.importcpp: "wxEVT_SPINCTRL", header: wxsctrlh.}: WxEventTypeTag[
    WxSpinEvent]

var wxEVT_SPINCTRLDOUBLE* {.importcpp: "wxEVT_SPINCTRLDOUBLE", header: wxsctrlh.}: WxEventTypeTag[
    WxSpinDoubleEvent]


type 
  WxSpinCtrlBase* {.importcpp: "wxSpinCtrlBase", header: wxsctrlh.} = object of WxControl
  

proc constructwxSpinCtrlBase*(): WxSpinCtrlBase {.cdecl, constructor, 
    importcpp: "wxSpinCtrlBase(@)", header: wxsctrlh.}
proc getSnapToTicks*(this: WxSpinCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "GetSnapToTicks", header: wxsctrlh.}
proc setValue*(this: var WxSpinCtrlBase; value: WxString) {.cdecl, 
    importcpp: "SetValue", header: wxsctrlh.}
proc setSnapToTicks*(this: var WxSpinCtrlBase; snapToTicks: bool) {.cdecl, 
    importcpp: "SetSnapToTicks", header: wxsctrlh.}
proc getBase*(this: WxSpinCtrlBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetBase", header: wxsctrlh.}
proc setBase*(this: var WxSpinCtrlBase; base: cint): bool {.discardable, cdecl, 
    importcpp: "SetBase", header: wxsctrlh.}
proc setSelection*(this: var WxSpinCtrlBase; `from`: clong; to: clong) {.cdecl, 
    importcpp: "SetSelection", header: wxsctrlh.}

type 
  WxSpinDoubleEvent* {.importcpp: "wxSpinDoubleEvent", header: wxsctrlh.} = object of WxNotifyEvent
  

proc constructwxSpinDoubleEvent*(commandType: WxEventType = wxEVT_NULL; 
                                 winid: cint = 0; value: cdouble = 0): WxSpinDoubleEvent {.
    cdecl, constructor, importcpp: "wxSpinDoubleEvent(@)", header: wxsctrlh.}
proc constructwxSpinDoubleEvent*(event: WxSpinDoubleEvent): WxSpinDoubleEvent {.
    cdecl, constructor, importcpp: "wxSpinDoubleEvent(@)", header: wxsctrlh.}
proc getValue*(this: WxSpinDoubleEvent): cdouble {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: wxsctrlh.}
proc setValue*(this: var WxSpinDoubleEvent; value: cdouble) {.cdecl, 
    importcpp: "SetValue", header: wxsctrlh.}
proc clone*(this: WxSpinDoubleEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxsctrlh.}
type 
  WxSpinCtrl* {.importcpp: "wxSpinCtrl", header: wxsctrlh.} = object of WxSpinButton

converter implicitDeref*(p: ptr WxSpinCtrl): var WxSpinCtrl = p[]

proc constructwxSpinCtrl*(): WxSpinCtrl {.cdecl, constructor, 
    importcpp: "wxSpinCtrl(@)", header: wxsctrlh.}
proc constructwxSpinCtrl*(parent: ptr WxWindow; id: WxWindowID = wxID_ANY; 
                          value: WxString = wxEmptyString; 
                          pos: WxPoint = wxDefaultPosition; 
                          size: WxSize = wxDefaultSize; 
                          style: clong = wxSP_ARROW_KEYS or int(wxALIGN_RIGHT); 
                          min: cint = 0; max: cint = 100; initial: cint = 0; 
                          name: WxString = constructWxString("wxSpinCtrl")): WxSpinCtrl {.
    cdecl, constructor, importcpp: "wxSpinCtrl(@)", header: wxsctrlh.}
proc create*(this: var WxSpinCtrl; parent: ptr WxWindow; 
             id: WxWindowID = wxID_ANY; value: WxString = wxEmptyString; 
             pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
             style: clong = wxSP_ARROW_KEYS or int(wxALIGN_RIGHT); 
             min: cint = 0; max: cint = 100; initial: cint = 0; 
             name: WxString = constructWxString("wxSpinCtrl")): bool {.cdecl, 
    importcpp: "Create", header: wxsctrlh.}
proc setValue*(this: var WxSpinCtrl; text: WxString) {.cdecl, 
    importcpp: "SetValue", header: wxsctrlh.}
proc setSelection*(this: var WxSpinCtrl; `from`: clong; to: clong) {.cdecl, 
    importcpp: "SetSelection", header: wxsctrlh.}
proc getBase*(this: WxSpinCtrl): cint {.noSideEffect, cdecl, 
                                        importcpp: "GetBase", header: wxsctrlh.}
proc setBase*(this: var WxSpinCtrl; base: cint): bool {.discardable, cdecl, 
    importcpp: "SetBase", header: wxsctrlh.}
proc destroywxSpinCtrl*(this: var WxSpinCtrl) {.cdecl, 
    importcpp: "#.~wxSpinCtrl()", header: wxsctrlh.}
proc setValue*(this: var WxSpinCtrl; val: cint) {.cdecl, importcpp: "SetValue", 
    header: wxsctrlh.}
proc getValue*(this: WxSpinCtrl): cint {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: wxsctrlh.}
proc setRange*(this: var WxSpinCtrl; minVal: cint; maxVal: cint) {.cdecl, 
    importcpp: "SetRange", header: wxsctrlh.}
proc setFont*(this: var WxSpinCtrl; font: WxFont): bool {.discardable, cdecl, 
    importcpp: "SetFont", header: wxsctrlh.}
proc setFocus*(this: var WxSpinCtrl) {.cdecl, importcpp: "SetFocus", header: wxsctrlh.}
proc enable*(this: var WxSpinCtrl; enable: bool = true): bool {.cdecl, 
    importcpp: "Enable", header: wxsctrlh.}
proc show*(this: var WxSpinCtrl; show: bool = true): bool {.discardable, cdecl, 
    importcpp: "Show", header: wxsctrlh.}
proc reparent*(this: var WxSpinCtrl; newParent: ptr WxWindowBase): bool {.cdecl, 
    importcpp: "Reparent", header: wxsctrlh.}
proc acceptsFocus*(this: WxSpinCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "AcceptsFocus", header: wxsctrlh.}
proc getDefaultAttributes*(this: WxSpinCtrl): WxVisualAttributes {.noSideEffect, 
    cdecl, importcpp: "GetDefaultAttributes", header: wxsctrlh.}

template wxSpinDoubleEventHandler*(`func`: untyped): untyped = 
  wxEVENT_HANDLER_CAST(wxSpinDoubleEventFunction, `func`)


template evt_Spinctrl*(id, fn: untyped): untyped = 
  wxDECLARE_EVT1(wxEVT_SPINCTRL, id, wxSpinEventHandler(fn))

template evt_Spinctrldouble*(id, fn: untyped): untyped = 
  wxDECLARE_EVT1(wxEVT_SPINCTRLDOUBLE, id, wxSpinDoubleEventHandler(fn))
