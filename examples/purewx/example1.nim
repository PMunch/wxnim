import "../../wxnim/wx"

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

f.show(true)

runMainLoop()
