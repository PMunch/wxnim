# NOTE: these imports are relative to this folder, this would not be required if wxnim was installed with Nimble
import "../../wxnim/wx", "../../wxnim/genui"

# Experimental is required for now, this will become default later
#{.experimental: "implicitDeref".}

var cbChoices = @["Combobox 1", "Combobox 2", "Combobox 3"]

# This allows us to use these variables before they are declared to create our callbacks
var
  spinner: ptr WxSpinCtrl
  slider: ptr WxSlider
  gauge: ptr WxGauge

# Callbacks needs to be {.cdecl.} to be passed to the bind function in wxWidgets
proc spinnerCallback(e: var WxSpinEvent) {.cdecl.} =
  let val = e.getPosition()
  slider.setValue(val)
  gauge.setValue(val)

proc sliderCallback(e: var WxCommandEvent) {.cdecl.} =
  let val = e.getInt()
  spinner.setValue(val)
  gauge.setValue(val)

# Generate the GUI
genui:
  mainFrame % Frame(title = "Hello World"):
    Panel | Boxsizer(orient = wxHorizontal):
      StaticBox(label = "Basic controls")[proportion = 1] | StaticBoxSizer(orient = wxVertical):
        Button: "Button"
        CheckBox: "Checkbox"
        TextCtrl(value = "Entry")
        StaticText: "Label"
      Panel[proportion = 2] | Boxsizer(orient = wxVertical):
        StaticBox(label = "Numbers") | StaticBoxSizer(orient = wxVertical):
          spinner % SpinCtrl(min = 0, max = 100) -> (wxEVT_SPINCTRL, spinnerCallback)
          slider % Slider(value = 0, minValue = 0, maxValue = 100) -> (wxEVT_SLIDER, sliderCallback)
          gauge % Gauge(range = 100)
        StaticBox(label = "Lists") | StaticBoxSizer(orient = wxVertical):
          Choice(choices = cbChoices, pos = wxDefaultPosition, size = wxDefaultSize)
          ComboBox(choices = cbChoices)
          RadioButton(style = wxRB_GROUP): "RadioButton 1"
          RadioButton: "RadioButton 2"
          RadioButton: "RadioButton 3"

# Show the main frame and run the main loop
mainFrame.show()
runMainLoop()
