
import "../../wxnim/wx", "../../wxnim/genui"

{.experimental.}

var
    textCtrl: ptr WxTextCtrl


proc buttonClicked(e: var WxCommandEvent)  =
    var                  
        theText = string(textCtrl.getValue())    
    echo theText
    

genui:
    mainFrame % Frame(title = "Hello World"):
        Panel | BoxSizer(orient = wxHorizontal):
            StaticBox(label = "Basic controls") | StaticBoxSizer(orient = wxVertical):
                textCtrl % TextCtrl
                theButton % Button -> (wxEVT_BUTTON, buttonClicked): "Click me"

mainFrame.show()
runMainLoop()