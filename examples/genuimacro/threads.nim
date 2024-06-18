import "../../wxnim/wx", "../../wxnim/genui", "../../wxnim/stc"
import os
{.experimental.}

# Note that explicitly passing channels is not required and you could use a global variable for it
var
  thread: Thread[tuple[message: ptr Channel[string], progress: ptr Channel[int]]]
  lineChannel: Channel[string]
  progressChannel: Channel[int]

open lineChannel
open progressChannel

# Create a couple of new custom events so we don't collide with the built-in ones
var
  threadEndEvent = wxNewEventType()
  threadUpdateEvent = wxNewEventType()

# Simple template to make event sending a tad easier (note that the ev has to be cloned to be stored outside our local memory)
template sendEvent(window: ptr WxWindow, evType: WxEventType) =
  var ev = constructwxThreadEvent(evType)
  window.getEventHandler().queueEvent(ev.clone)

# Define some variables so we can use these in callbacks (alternatively we could forward declare the callbacks and not define these)
var
  mainFrame: ptr WxFrame
  messageEntry: ptr WxTextCtrl
  runButton: ptr WxButton
  progressBar: ptr WxGauge

# Our thread simply echoes out the message from one of the channels. Then does a loop with sleeping, sending an event to update the progress bar.
proc echoAndWait(myChannels: tuple[message: ptr Channel[string], progress: ptr Channel[int]]) {.thread.} =
  echo recv myChannels.message
  for i in 0..100:
    sleep(100)
    myChannels.progress.send i
    mainFrame.sendEvent(threadUpdateEvent)
  mainFrame.sendEvent(threadEndEvent)

# Run a thread
proc startThreadClick(e: var WxCommandEvent) {.cdecl.} =
    discard messageEntry[].enable(false)
    discard runButton[].enable(false)
    progressBar.setValue(0)
    var entryText = messageEntry.getLineText(0)
    lineChannel.send $(entryText.cStr.asCstring)
    thread.createThread(echoAndWait, (message: lineChannel.addr, progress: progressChannel.addr))

# Generate our GUI
genui:
  mainFrame%Frame(title = "Threads and events example"):
    Panel | Boxsizer(orient=wxVertical):
      StaticText: "Please write a message to be echoed by the thread:"
      messageEntry % TextCtrl(value = "Hello from thread!")
      StaticText: "Thread progress:"
      progressBar % Gauge(range = 100)
      runButton % Button[flag = wxEXPAND] -> (wxEVT_BUTTON, startThreadClick) : "Run thread!"
      StaticBox(label = "Controls to demonstrate the UI doesn't freeze") | StaticBoxSizer(orient = wxVertical):
        Slider(value = 0, minValue = 0, maxValue = 100)
        Choice(choices = @["These", "Are","Some","Options"], pos = wxDefaultPosition, size = wxDefaultSize)

# Callbacks can also be created and bound like this
mainFrame[].`bind`(threadEndEvent, proc (e: var WxCommandEvent) {.cdecl.} =
  discard messageEntry[].enable(true)
  discard runButton[].enable(true)
)
mainFrame[].`bind`(threadUpdateEvent, proc (e: var WxCommandEvent) {.cdecl.} =
  progressBar.setValue(cint(recv progressChannel))
)

mainFrame.show(true)
runMainLoop()
