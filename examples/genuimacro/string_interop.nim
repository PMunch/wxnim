
import "../../wxnim/wx", "../../wxnim/genui"

{.experimental.}

var
    textCtrl: ptr WxTextCtrl

func stringFromWxString(s: WxString): string =   
    #[
        Context about wxString handling:
            - wxString class reference, particularly .ToUTF8() method 
              https://docs.wxwidgets.org/3.0/classwx_string.html   
            - wxScopedCharTypeBuffer<T> reference, particularly .data() method 
              https://docs.wxwidgets.org/3.0/classwx_scoped_char_type_buffer.html#a7cd7ba0ab32e9f63779f602c2bdfd9b8
        
        Nim emit pragma for embedding C++ code:
            - https://nim-lang.github.io/Nim/manual.html#implementation-specific-pragmas-emit-pragma
        
        C++11 limits on implicit conversion from const char* to char* 
            - https://stackoverflow.com/questions/48554625/vs-2017-doesnt-implicitly-convert-const-char-to-char/48554786
            - https://en.cppreference.com/w/cpp/language/const_cast
    ]#
        
    var r: cstring

    {.emit: """
    `r` = const_cast<char*>((const char*)s.ToUTF8().data());        
    """.}  

    result = $r #convert cstring to string
        

proc buttonClicked(e: var WxCommandEvent)  =
    var                  
        theText = stringFromWxString(textCtrl.getValue())    
    echo theText
    

genui:
    mainFrame % Frame(title = "Hello World"):
        Panel | BoxSizer(orient = wxHorizontal):
            StaticBox(label = "Basic controls") | StaticBoxSizer(orient = wxVertical):
                textCtrl % TextCtrl
                theButton % Button -> (wxEVT_BUTTON, buttonClicked): "Click me"

mainFrame.show()
runMainLoop()