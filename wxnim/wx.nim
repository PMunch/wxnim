# wx wrapper for Nim
# See LICENSE.txt for details of the license.

# Andreas Rumpf 2015

include wxCompile
include driver

const
  wxh* = """#include <wx/wxprec.h>
#ifndef WX_PRECOMP
    #include <wx/wx.h>
#endif"""

{.noforward: on.}

include "private/object"
include private/string

converter toWxString*(s: string): WxString =
  result = constructWxString(cstring(s), s.len)

converter toString*(s: WxString): string = 
  var r: cstring

  {.emit: """
  `r` = const_cast<char*>((const char*)s.ToUTF8().data());        
  """.}  

  result = $r #convert cstring to string  


converter wxOrientationToClong*(inType:WxOrientation): clong = cast[clong](inType)

converter wxStretchToCint*(inType:WxStretch): cint = cast[cint](inType)

converter wxAlignmentToCint*(inType:WxAlignment): cint = cast[cint](inType)

converter wxDirectionToCint*(inType:WxDirection): cint = cast[cint](inType)


include private/arrstr

converter stringArrayToWxStringArray*(inType: seq[string]): WxArrayString =
  result = constructWxArrayString()
  for str in inType:
    result.add(str)

include private/colour
include private/fontenc
include private/defs

const
  fileWildcard* = when defined(windows): "*.*" else: "*"

include private/list
include private/gdicmn
include private/font
include private/fontdata
include private/fontenum

include private/image
include private/bitmap

include private/icon
include private/intl

type
  WxClientDataType* {.importcpp: "wxClientDataType", header: "<wx/wx.h>".} = object of WxObject

const isForward = 1

include private/event
include private/window
include private/layout

include private/aboutdlg

include private/any
include private/control
include private/anybutton
include private/app
include private/bannerwindow
include private/button
include private/bmpbuttn

include private/calctrl
include private/checkbox
include private/listbox

include private/checklst
include private/choice
include private/colordlg
include private/combo
include private/combobox
include private/commandlinkbutton
include private/dataobj
include private/dataview
include private/datetimectrl
include private/datectrl
include private/dialog
include private/dirdlg
include private/filedlg
include private/fontdlg
include private/fontpicker
include private/frame
include private/gauge
include private/hyperlink
include private/kbdstate
include private/listbook
include private/listctrl
include private/menu
include private/menuitem
#include private/notebook
include private/ownerdrw
include private/panel
include private/position
include private/radiobox
include private/radiobut
include private/sizer
include private/slider
include private/spinbutt
include private/spinctrl
include private/statusbar
include private/textctrl
include private/toolbar
include private/treectrl
include private/types
include private/variant
include private/webview
include private/stattext
include private/statbox
include private/tglbtn
include private/statbmpbase
include private/statbmp

include private/scrolwin


proc cnew*[T](x: T): ptr T {.importcpp: "(new @)", nodecl.}

converter toEventType*[T](x: WxEventTypeTag[T]): WxEventType {.
  importcpp: "#", header: "<wx/wx.h>".}

when false:
  proc registerEventCallback(attachedTo: int;
                             callback: proc (x: WxEvent) {.closure.}) =
    {.emit: """
    wxTheApp->Bind();
    """.}

