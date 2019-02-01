


const 
  wxHAS_CALL_AFTER* = true


discard "forward decl of wxList"
discard "forward decl of wxEvent"
type 
  WxEventFilter* {.importcpp: "wxEventFilter", header: wxh.} = object 
  

discard "forward decl of wxDC"
discard "forward decl of wxMenu"
discard "forward decl of wxWindow"
discard "forward decl of wxWindowBase"

discard "forward decl of wxEvtHandler"
discard "forward decl of wxEventConnectionRef"
type 
  WxEventType* = cint

const 
  wxEVT_ANY* = WxEventType(-1)



proc wxNewEventType*(): WxEventType {.cdecl, importcpp: "wxNewEventType(@)", 
                                      header: wxh.}






type 
  WxEventTypeTag* {.importcpp: "wxEventTypeTag", header: wxh.}[T] = object 
  

proc constructwxEventTypeTag*[T](`type`: WxEventType): WxEventTypeTag[T] {.
    cdecl, constructor, importcpp: "wxEventTypeTag(@)", header: wxh.}

type 
  WxEventFunction* = pointer
  WxObjectEventFunction* = WxEventFunction


var wxEVT_NULL* {.importcpp: "wxEVT_NULL", header: wxh.}: WxEventType

var wxEVT_FIRST* {.importcpp: "wxEVT_FIRST", header: wxh.}: WxEventType

var wxEVT_USER_FIRST* {.importcpp: "wxEVT_USER_FIRST", header: wxh.}: WxEventType


type 
  WxEventCategory* {.size: sizeof(cint), 
                     importcpp: "wxEventCategory", 
                     header: wxh.} = enum 
    wxEVT_CATEGORY_UI = 1, wxEVT_CATEGORY_USER_INPUT = 2, 
    wxEVT_CATEGORY_NATIVE_EVENTS = 1 or 2, wxEVT_CATEGORY_SOCKET = 4, 
    wxEVT_CATEGORY_TIMER = 8, wxEVT_CATEGORY_THREAD = 16, 
    wxEVT_CATEGORY_UNKNOWN = 32, wxEVT_CATEGORY_CLIPBOARD = 64, 
    wxEVT_CATEGORY_ALL = 1 or 2 or 4 or 8 or 16 or 32 or 64


type 
  WxEvent* {.importcpp: "wxEvent", header: wxh.} = object of WxObject
    mCallbackUserData* {.importc: "m_callbackUserData".}: ptr WxObject
  

proc constructwxEvent*(winid: cint = 0; commandType: WxEventType = wxEVT_NULL): WxEvent {.
    cdecl, constructor, importcpp: "wxEvent(@)", header: wxh.}
proc setEventType*(this: var WxEvent; typ: WxEventType) {.cdecl, 
    importcpp: "SetEventType", header: wxh.}
proc getEventType*(this: WxEvent): WxEventType {.noSideEffect, cdecl, 
    importcpp: "GetEventType", header: wxh.}
proc getEventObject*(this: WxEvent): ptr WxObject {.noSideEffect, cdecl, 
    importcpp: "GetEventObject", header: wxh.}
proc setEventObject*(this: var WxEvent; obj: ptr WxObject) {.cdecl, 
    importcpp: "SetEventObject", header: wxh.}
proc getTimestamp*(this: WxEvent): clong {.noSideEffect, cdecl, 
    importcpp: "GetTimestamp", header: wxh.}
proc setTimestamp*(this: var WxEvent; ts: clong = 0) {.cdecl, 
    importcpp: "SetTimestamp", header: wxh.}
proc getId*(this: WxEvent): cint {.noSideEffect, cdecl, importcpp: "GetId", 
                                   header: wxh.}
proc setId*(this: var WxEvent; id: cint) {.cdecl, importcpp: "SetId", 
    header: wxh.}
proc getEventUserData*(this: WxEvent): ptr WxObject {.noSideEffect, cdecl, 
    importcpp: "GetEventUserData", header: wxh.}
proc skip*(this: var WxEvent; skip: bool = true) {.cdecl, importcpp: "Skip", 
    header: wxh.}
proc getSkipped*(this: WxEvent): bool {.noSideEffect, cdecl, 
                                        importcpp: "GetSkipped", header: wxh.}
proc clone*(this: WxEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}
proc getEventCategory*(this: WxEvent): WxEventCategory {.noSideEffect, cdecl, 
    importcpp: "GetEventCategory", header: wxh.}
proc isCommandEvent*(this: WxEvent): bool {.noSideEffect, cdecl, 
    importcpp: "IsCommandEvent", header: wxh.}
proc shouldPropagate*(this: WxEvent): bool {.noSideEffect, cdecl, 
    importcpp: "ShouldPropagate", header: wxh.}
proc stopPropagation*(this: var WxEvent): cint {.cdecl, 
    importcpp: "StopPropagation", header: wxh.}
proc resumePropagation*(this: var WxEvent; propagationLevel: cint) {.cdecl, 
    importcpp: "ResumePropagation", header: wxh.}
proc getPropagatedFrom*(this: WxEvent): ptr WxEvtHandler {.noSideEffect, cdecl, 
    importcpp: "GetPropagatedFrom", header: wxh.}
proc wasProcessed*(this: var WxEvent): bool {.cdecl, importcpp: "WasProcessed", 
    header: wxh.}
proc setWillBeProcessedAgain*(this: var WxEvent) {.cdecl, 
    importcpp: "SetWillBeProcessedAgain", header: wxh.}
proc willBeProcessedAgain*(this: var WxEvent): bool {.cdecl, 
    importcpp: "WillBeProcessedAgain", header: wxh.}
proc shouldProcessOnlyIn*(this: WxEvent; h: ptr WxEvtHandler): bool {.
    noSideEffect, cdecl, importcpp: "ShouldProcessOnlyIn", header: wxh.}
proc didntHonourProcessOnlyIn*(this: var WxEvent) {.cdecl, 
    importcpp: "DidntHonourProcessOnlyIn", header: wxh.}

type 
  WxEventFunctor* {.importcpp: "wxEventFunctor", header: wxh, inheritable.} = object 
  

proc destroywxEventFunctor*(this: var WxEventFunctor) {.cdecl, 
    importcpp: "#.~wxEventFunctor()", header: wxh.}
proc call*(this: var WxEventFunctor; a3: ptr WxEvtHandler; a4: var WxEvent) {.
    cdecl, importcpp: "#(@)", header: wxh.}
proc isMatching*(this: WxEventFunctor; functor: WxEventFunctor): bool {.
    noSideEffect, cdecl, importcpp: "IsMatching", header: wxh.}
proc getEvtHandler*(this: WxEventFunctor): ptr WxEvtHandler {.noSideEffect, 
    cdecl, importcpp: "GetEvtHandler", header: wxh.}
proc getEvtMethod*(this: WxEventFunctor): WxEventFunction {.noSideEffect, cdecl, 
    importcpp: "GetEvtMethod", header: wxh.}

type 
  WxObjectEventFunctor* {.importcpp: "wxObjectEventFunctor", header: wxh.} = object of WxEventFunctor
  

proc constructwxObjectEventFunctor*(`method`: WxObjectEventFunction; 
                                    handler: ptr WxEvtHandler): WxObjectEventFunctor {.
    cdecl, constructor, importcpp: "wxObjectEventFunctor(@)", header: wxh.}
proc call*(this: var WxObjectEventFunctor; handler: ptr WxEvtHandler; 
           event: var WxEvent) {.cdecl, importcpp: "#(@)", header: wxh.}
proc isMatching*(this: WxObjectEventFunctor; functor: WxEventFunctor): bool {.
    noSideEffect, cdecl, importcpp: "IsMatching", header: wxh.}
proc getEvtHandler*(this: WxObjectEventFunctor): ptr WxEvtHandler {.
    noSideEffect, cdecl, importcpp: "GetEvtHandler", header: wxh.}
proc getEvtMethod*(this: WxObjectEventFunctor): WxEventFunction {.noSideEffect, 
    cdecl, importcpp: "GetEvtMethod", header: wxh.}

proc wxNewEventFunctor*(evtType: WxEventType; `method`: WxObjectEventFunction; 
                        handler: ptr WxEvtHandler): ptr WxObjectEventFunctor {.
    cdecl, importcpp: "wxNewEventFunctor(@)", header: wxh.}

proc wxNewEventTableFunctor*(evtType: WxEventType; 
                             `method`: WxObjectEventFunction): ptr WxObjectEventFunctor {.
    cdecl, importcpp: "wxNewEventTableFunctor(@)", header: wxh.}
proc wxMakeEventFunctor*(evtType: WxEventType; `method`: WxObjectEventFunction; 
                         handler: ptr WxEvtHandler): WxObjectEventFunctor {.
    cdecl, importcpp: "wxMakeEventFunctor(@)", header: wxh.}

type 
  WxEventFunctorMethod* {.importcpp: "wxEventFunctorMethod", header: wxh.}[
      EventTag, Class, EventArg, EventHandler] = object of WxEventFunctor
  

proc constructwxEventFunctorMethod*[EventTag, Class, EventArg, EventHandler](
    eventArg: pointer; handler: ptr EventHandler): WxEventFunctorMethod[
    EventTag, Class, EventArg, EventHandler] {.cdecl, constructor, 
    importcpp: "wxEventFunctorMethod(@)", header: wxh.}
proc call*[EventTag, Class, EventArg, EventHandler](
    this: var WxEventFunctorMethod[EventTag, Class, EventArg, EventHandler]; 
    handler: ptr WxEvtHandler; event: var WxEvent) {.cdecl, importcpp: "#(@)", 
    header: wxh.}
proc isMatching*[EventTag, Class, EventArg, EventHandler](
    this: WxEventFunctorMethod[EventTag, Class, EventArg, EventHandler]; 
    functor: WxEventFunctor): bool {.noSideEffect, cdecl, 
                                     importcpp: "IsMatching", header: wxh.}
proc getEvtHandler*[EventTag, Class, EventArg, EventHandler](
    this: WxEventFunctorMethod[EventTag, Class, EventArg, EventHandler]): ptr WxEvtHandler {.
    noSideEffect, cdecl, importcpp: "GetEvtHandler", header: wxh.}
proc getEvtMethod*[EventTag, Class, EventArg, EventHandler](
    this: WxEventFunctorMethod[EventTag, Class, EventArg, EventHandler]): WxEventFunction {.
    noSideEffect, cdecl, importcpp: "GetEvtMethod", header: wxh.}

type 
  WxEventFunctorFunction* {.importcpp: "wxEventFunctorFunction", header: wxh.}[
      EventTag, EventArg] = object of WxEventFunctor
  

proc constructwxEventFunctorFunction*[EventTag, EventArg](
    handler: proc (a2: var EventArg) {.cdecl.}): WxEventFunctorFunction[
    EventTag, EventArg] {.cdecl, constructor, 
                          importcpp: "wxEventFunctorFunction(@)", header: wxh.}
proc call*[EventTag, EventArg](this: var WxEventFunctorFunction[EventTag, 
    EventArg]; handler: ptr WxEvtHandler; event: var WxEvent) {.cdecl, 
    importcpp: "#(@)", header: wxh.}
proc isMatching*[EventTag, EventArg](this: WxEventFunctorFunction[EventTag, 
    EventArg]; functor: WxEventFunctor): bool {.noSideEffect, cdecl, 
    importcpp: "IsMatching", header: wxh.}
type 
  WxEventFunctorFunctor* {.importcpp: "wxEventFunctorFunctor", header: wxh.}[
      EventTag, Functor] = object of WxEventFunctor
  

proc constructwxEventFunctorFunctor*[EventTag, Functor](handler: Functor): WxEventFunctorFunctor[
    EventTag, Functor] {.cdecl, constructor, 
                         importcpp: "wxEventFunctorFunctor(@)", header: wxh.}
proc call*[EventTag, Functor](this: var WxEventFunctorFunctor[EventTag, Functor]; 
                              handler: ptr WxEvtHandler; event: var WxEvent) {.
    cdecl, importcpp: "#(@)", header: wxh.}
proc isMatching*[EventTag, Functor](this: WxEventFunctorFunctor[EventTag, 
    Functor]; functor: WxEventFunctor): bool {.noSideEffect, cdecl, 
    importcpp: "IsMatching", header: wxh.}

proc wxNewEventFunctor*[EventTag, EventArg](a2: EventTag; 
    `func`: proc (a2: var EventArg) {.cdecl.}): ptr WxEventFunctorFunction[
    EventTag, EventArg] {.cdecl, importcpp: "wxNewEventFunctor(@)", header: wxh.}
proc wxMakeEventFunctor*[EventTag, EventArg](a2: EventTag; 
    `func`: proc (a2: var EventArg) {.cdecl.}): WxEventFunctorFunction[EventTag, 
    EventArg] {.cdecl, importcpp: "wxMakeEventFunctor(@)", header: wxh.}

proc wxNewEventFunctor*[EventTag, Functor](a2: EventTag; `func`: Functor): ptr WxEventFunctorFunctor[
    EventTag, Functor] {.cdecl, importcpp: "wxNewEventFunctor(@)", header: wxh.}
proc wxMakeEventFunctor*[EventTag, Functor](a2: EventTag; `func`: Functor): WxEventFunctorFunctor[
    EventTag, Functor] {.cdecl, importcpp: "wxMakeEventFunctor(@)", header: wxh.}

proc wxNewEventFunctor*[EventTag, Class, EventArg, EventHandler](a2: EventTag; 
    eventArg: pointer; handler: ptr EventHandler): ptr WxEventFunctorMethod[
    EventTag, Class, EventArg, EventHandler] {.cdecl, 
    importcpp: "wxNewEventFunctor(@)", header: wxh.}
proc wxMakeEventFunctor*[EventTag, Class, EventArg, EventHandler](a2: EventTag; 
    `method`: pointer; handler: ptr EventHandler): WxEventFunctorMethod[
    EventTag, Class, EventArg, EventHandler] {.cdecl, 
    importcpp: "wxMakeEventFunctor(@)", header: wxh.}

proc wxNewEventTableFunctor*[EventTag, Class, EventArg](a2: EventTag; 
    `method`: pointer): ptr WxEventFunctorMethod[EventTag, Class, EventArg, 
    Class] {.cdecl, importcpp: "wxNewEventTableFunctor(@)", header: wxh.}

discard "forward decl of wxIdleEvent"
discard "forward decl of wxThreadEvent"
discard "forward decl of wxAsyncMethodCallEvent"
discard "forward decl of wxCommandEvent"
discard "forward decl of wxMouseEvent"
discard "forward decl of wxFocusEvent"
discard "forward decl of wxChildFocusEvent"
discard "forward decl of wxKeyEvent"
discard "forward decl of wxNavigationKeyEvent"
discard "forward decl of wxSetCursorEvent"
discard "forward decl of wxScrollEvent"
discard "forward decl of wxSpinEvent"
discard "forward decl of wxScrollWinEvent"
discard "forward decl of wxSizeEvent"
discard "forward decl of wxMoveEvent"
discard "forward decl of wxCloseEvent"
discard "forward decl of wxActivateEvent"
discard "forward decl of wxWindowCreateEvent"
discard "forward decl of wxWindowDestroyEvent"
discard "forward decl of wxShowEvent"
discard "forward decl of wxIconizeEvent"
discard "forward decl of wxMaximizeEvent"
discard "forward decl of wxMouseCaptureChangedEvent"
discard "forward decl of wxMouseCaptureLostEvent"
discard "forward decl of wxPaintEvent"
discard "forward decl of wxEraseEvent"
discard "forward decl of wxNcPaintEvent"
discard "forward decl of wxMenuEvent"
discard "forward decl of wxContextMenuEvent"
discard "forward decl of wxSysColourChangedEvent"
discard "forward decl of wxDisplayChangedEvent"
discard "forward decl of wxQueryNewPaletteEvent"
discard "forward decl of wxPaletteChangedEvent"
discard "forward decl of wxJoystickEvent"
discard "forward decl of wxDropFilesEvent"
discard "forward decl of wxInitDialogEvent"
discard "forward decl of wxUpdateUIEvent"
discard "forward decl of wxClipboardTextEvent"
discard "forward decl of wxHelpEvent"
type 
  WxEventPropagation* {.size: sizeof(cint), 
                        importcpp: "wxHelpEvent::wxEventPropagation", 
                        header: wxh.} = enum 
    wxEVENT_PROPAGATE_NONE = 0, wxEVENT_PROPAGATE_MAX = high(cint)



type 
  WxPropagationDisabler* {.importcpp: "wxPropagationDisabler", header: wxh.} = object 
  

proc constructwxPropagationDisabler*(event: var WxEvent): WxPropagationDisabler {.
    cdecl, constructor, importcpp: "wxPropagationDisabler(@)", header: wxh.}
proc destroywxPropagationDisabler*(this: var WxPropagationDisabler) {.cdecl, 
    importcpp: "#.~wxPropagationDisabler()", header: wxh.}

type 
  WxPropagateOnce* {.importcpp: "wxPropagateOnce", header: wxh.} = object 
  

proc constructwxPropagateOnce*(event: var WxEvent; 
                               handler: ptr WxEvtHandler = nil): WxPropagateOnce {.
    cdecl, constructor, importcpp: "wxPropagateOnce(@)", header: wxh.}
proc destroywxPropagateOnce*(this: var WxPropagateOnce) {.cdecl, 
    importcpp: "#.~wxPropagateOnce()", header: wxh.}

type 
  WxEventProcessInHandlerOnly* {.importcpp: "wxEventProcessInHandlerOnly", 
                                 header: wxh.} = object 
  

proc constructwxEventProcessInHandlerOnly*(event: var WxEvent; 
    handler: ptr WxEvtHandler): WxEventProcessInHandlerOnly {.cdecl, 
    constructor, importcpp: "wxEventProcessInHandlerOnly(@)", header: wxh.}
proc destroywxEventProcessInHandlerOnly*(this: var WxEventProcessInHandlerOnly) {.
    cdecl, importcpp: "#.~wxEventProcessInHandlerOnly()", header: wxh.}
type 
  WxEventBasicPayloadMixin* {.importcpp: "wxEventBasicPayloadMixin", 
                              header: wxh, inheritable.} = object 
  

proc constructwxEventBasicPayloadMixin*(): WxEventBasicPayloadMixin {.cdecl, 
    constructor, importcpp: "wxEventBasicPayloadMixin(@)", header: wxh.}
proc setString*(this: var WxEventBasicPayloadMixin; s: WxString) {.cdecl, 
    importcpp: "SetString", header: wxh.}
proc getString*(this: WxEventBasicPayloadMixin): WxString {.noSideEffect, cdecl, 
    importcpp: "GetString", header: wxh.}
proc setInt*(this: var WxEventBasicPayloadMixin; i: cint) {.cdecl, 
    importcpp: "SetInt", header: wxh.}
proc getInt*(this: WxEventBasicPayloadMixin): cint {.noSideEffect, cdecl, 
    importcpp: "GetInt", header: wxh.}
proc setExtraLong*(this: var WxEventBasicPayloadMixin; extraLong: clong) {.
    cdecl, importcpp: "SetExtraLong", header: wxh.}
proc getExtraLong*(this: WxEventBasicPayloadMixin): clong {.noSideEffect, cdecl, 
    importcpp: "GetExtraLong", header: wxh.}
type 
  WxEventAnyPayloadMixin* {.importcpp: "wxEventAnyPayloadMixin", header: wxh.} = object of WxEventBasicPayloadMixin
  

proc constructwxEventAnyPayloadMixin*(): WxEventAnyPayloadMixin {.cdecl, 
    constructor, importcpp: "wxEventAnyPayloadMixin(@)", header: wxh.}

type 
  WxIdleMode* {.size: sizeof(cint), importcpp: "wxHelpEvent::wxIdleMode", 
                header: wxh.} = enum 
    wxIDLE_PROCESS_ALL, wxIDLE_PROCESS_SPECIFIED


type 
  WxIdleEvent* {.importcpp: "wxIdleEvent", header: wxh.} = object of WxEvent
  

proc constructwxIdleEvent*(): WxIdleEvent {.cdecl, constructor, 
    importcpp: "wxIdleEvent(@)", header: wxh.}
proc constructwxIdleEvent*(event: WxIdleEvent): WxIdleEvent {.cdecl, 
    constructor, importcpp: "wxIdleEvent(@)", header: wxh.}
proc requestMore*(this: var WxIdleEvent; needMore: bool = true) {.cdecl, 
    importcpp: "RequestMore", header: wxh.}
proc moreRequested*(this: WxIdleEvent): bool {.noSideEffect, cdecl, 
    importcpp: "MoreRequested", header: wxh.}
proc clone*(this: WxIdleEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}
proc setMode*(mode: WxIdleMode) {.cdecl, importcpp: "wxIdleEvent::SetMode(@)", 
                                  header: wxh.}
proc idleEventGetMode*(): WxIdleMode {.cdecl, importcpp: "wxIdleEvent::GetMode(@)", 
                              header: wxh.}

type 
  WxThreadEvent* {.importcpp: "wxThreadEvent", header: wxh.} = object of WxEvent
  

proc constructwxThreadEvent*(eventType: WxEventType; id = wxID_ANY): WxThreadEvent {.
    cdecl, constructor, importcpp: "wxThreadEvent(@)", header: wxh.}
proc constructwxThreadEvent*(event: WxThreadEvent): WxThreadEvent {.cdecl, 
    constructor, importcpp: "wxThreadEvent(@)", header: wxh.}
proc clone*(this: WxThreadEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}
proc getEventCategory*(this: WxThreadEvent): WxEventCategory {.noSideEffect, 
    cdecl, importcpp: "GetEventCategory", header: wxh.}

type 
  WxAsyncMethodCallEvent* {.importcpp: "wxAsyncMethodCallEvent", header: wxh.} = object of WxEvent
  

proc constructwxAsyncMethodCallEvent*(`object`: ptr WxObject): WxAsyncMethodCallEvent {.
    cdecl, constructor, importcpp: "wxAsyncMethodCallEvent(@)", header: wxh.}
proc constructwxAsyncMethodCallEvent*(other: WxAsyncMethodCallEvent): WxAsyncMethodCallEvent {.
    cdecl, constructor, importcpp: "wxAsyncMethodCallEvent(@)", header: wxh.}
proc execute*(this: var WxAsyncMethodCallEvent) {.cdecl, importcpp: "Execute", 
    header: wxh.}

type 
  WxAsyncMethodCallEvent0* {.importcpp: "wxAsyncMethodCallEvent0", header: wxh.}[
      T] = object of WxAsyncMethodCallEvent
  

proc constructwxAsyncMethodCallEvent0*[T](`object`: ptr T; `method`: pointer): WxAsyncMethodCallEvent0[
    T] {.cdecl, constructor, importcpp: "wxAsyncMethodCallEvent0(@)", 
         header: wxh.}
proc constructwxAsyncMethodCallEvent0*[T](other: WxAsyncMethodCallEvent0): WxAsyncMethodCallEvent0[
    T] {.cdecl, constructor, importcpp: "wxAsyncMethodCallEvent0(@)", 
         header: wxh.}
proc clone*[T](this: WxAsyncMethodCallEvent0[T]): ptr WxEvent {.noSideEffect, 
    cdecl, importcpp: "Clone", header: wxh.}
proc execute*[T](this: var WxAsyncMethodCallEvent0[T]) {.cdecl, 
    importcpp: "Execute", header: wxh.}

type 
  WxAsyncMethodCallEvent1* {.importcpp: "wxAsyncMethodCallEvent1", header: wxh.}[
      T, T1] = object of WxAsyncMethodCallEvent
  

proc constructwxAsyncMethodCallEvent1*[T, T1](`object`: ptr T; 
    `method`: pointer; x1: pointer): WxAsyncMethodCallEvent1[T, T1] {.cdecl, 
    constructor, importcpp: "wxAsyncMethodCallEvent1(@)", header: wxh.}
proc constructwxAsyncMethodCallEvent1*[T, T1](other: WxAsyncMethodCallEvent1): WxAsyncMethodCallEvent1[
    T, T1] {.cdecl, constructor, importcpp: "wxAsyncMethodCallEvent1(@)", 
             header: wxh.}
proc clone*[T, T1](this: WxAsyncMethodCallEvent1[T, T1]): ptr WxEvent {.
    noSideEffect, cdecl, importcpp: "Clone", header: wxh.}
proc execute*[T, T1](this: var WxAsyncMethodCallEvent1[T, T1]) {.cdecl, 
    importcpp: "Execute", header: wxh.}

type 
  WxAsyncMethodCallEvent2* {.importcpp: "wxAsyncMethodCallEvent2", header: wxh.}[
      T, T1, T2] = object of WxAsyncMethodCallEvent
  

proc constructwxAsyncMethodCallEvent2*[T, T1, T2](`object`: ptr T; 
    `method`: pointer; x1: pointer; x2: pointer): WxAsyncMethodCallEvent2[T, T1, 
    T2] {.cdecl, constructor, importcpp: "wxAsyncMethodCallEvent2(@)", 
          header: wxh.}
proc constructwxAsyncMethodCallEvent2*[T, T1, T2](other: WxAsyncMethodCallEvent2): WxAsyncMethodCallEvent2[
    T, T1, T2] {.cdecl, constructor, importcpp: "wxAsyncMethodCallEvent2(@)", 
                 header: wxh.}
proc clone*[T, T1, T2](this: WxAsyncMethodCallEvent2[T, T1, T2]): ptr WxEvent {.
    noSideEffect, cdecl, importcpp: "Clone", header: wxh.}
proc execute*[T, T1, T2](this: var WxAsyncMethodCallEvent2[T, T1, T2]) {.cdecl, 
    importcpp: "Execute", header: wxh.}

type 
  WxAsyncMethodCallEventFunctor* {.importcpp: "wxAsyncMethodCallEventFunctor", 
                                   header: wxh.}[T] = object of WxAsyncMethodCallEvent
  

proc constructwxAsyncMethodCallEventFunctor*[T](`object`: ptr WxObject; fn: T): WxAsyncMethodCallEventFunctor[
    T] {.cdecl, constructor, importcpp: "wxAsyncMethodCallEventFunctor(@)", 
         header: wxh.}
proc constructwxAsyncMethodCallEventFunctor*[T](
    other: WxAsyncMethodCallEventFunctor): WxAsyncMethodCallEventFunctor[T] {.
    cdecl, constructor, importcpp: "wxAsyncMethodCallEventFunctor(@)", 
    header: wxh.}
proc clone*[T](this: WxAsyncMethodCallEventFunctor[T]): ptr WxEvent {.
    noSideEffect, cdecl, importcpp: "Clone", header: wxh.}
proc execute*[T](this: var WxAsyncMethodCallEventFunctor[T]) {.cdecl, 
    importcpp: "Execute", header: wxh.}

type 
  WxClientData* {.importcpp: "wxClientData", header: wxh, inheritable.} = object 
  
  WxCommandEvent* {.importcpp: "wxCommandEvent", header: wxh.} = object of WxEvent
  

proc constructwxCommandEvent*(commandType: WxEventType = wxEVT_NULL; 
                              winid: cint = 0): WxCommandEvent {.cdecl, 
    constructor, importcpp: "wxCommandEvent(@)", header: wxh.}
proc constructwxCommandEvent*(event: WxCommandEvent): WxCommandEvent {.cdecl, 
    constructor, importcpp: "wxCommandEvent(@)", header: wxh.}
proc setClientData*(this: var WxCommandEvent; clientData: pointer) {.cdecl, 
    importcpp: "SetClientData", header: wxh.}
proc getClientData*(this: WxCommandEvent): pointer {.noSideEffect, cdecl, 
    importcpp: "GetClientData", header: wxh.}
proc setClientObject*(this: var WxCommandEvent; clientObject: ptr WxClientData) {.
    cdecl, importcpp: "SetClientObject", header: wxh.}
proc getClientObject*(this: WxCommandEvent): ptr WxClientData {.noSideEffect, 
    cdecl, importcpp: "GetClientObject", header: wxh.}
proc getInt*(this: WxCommandEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetInt", header: wxh.}
proc getString*(this: WxCommandEvent): WxString {.noSideEffect, cdecl, 
    importcpp: "GetString", header: wxh.}
proc getSelection*(this: WxCommandEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetSelection", header: wxh.}
proc isChecked*(this: WxCommandEvent): bool {.noSideEffect, cdecl, 
    importcpp: "IsChecked", header: wxh.}
proc isSelection*(this: WxCommandEvent): bool {.noSideEffect, cdecl, 
    importcpp: "IsSelection", header: wxh.}
proc clone*(this: WxCommandEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}
proc getEventCategory*(this: WxCommandEvent): WxEventCategory {.noSideEffect, 
    cdecl, importcpp: "GetEventCategory", header: wxh.}

type 
  WxNotifyEvent* {.importcpp: "wxNotifyEvent", header: wxh.} = object of WxCommandEvent
  

proc constructwxNotifyEvent*(commandType: WxEventType = wxEVT_NULL; 
                             winid: cint = 0): WxNotifyEvent {.cdecl, 
    constructor, importcpp: "wxNotifyEvent(@)", header: wxh.}
proc constructwxNotifyEvent*(event: WxNotifyEvent): WxNotifyEvent {.cdecl, 
    constructor, importcpp: "wxNotifyEvent(@)", header: wxh.}
proc veto*(this: var WxNotifyEvent) {.cdecl, importcpp: "Veto", header: wxh.}
proc allow*(this: var WxNotifyEvent) {.cdecl, importcpp: "Allow", header: wxh.}
proc isAllowed*(this: WxNotifyEvent): bool {.noSideEffect, cdecl, 
    importcpp: "IsAllowed", header: wxh.}
proc clone*(this: WxNotifyEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}

type 
  WxScrollEvent* {.importcpp: "wxScrollEvent", header: wxh.} = object of WxCommandEvent
  

proc constructwxScrollEvent*(commandType: WxEventType = wxEVT_NULL; 
                             winid: cint = 0; pos: cint = 0; orient: cint = 0): WxScrollEvent {.
    cdecl, constructor, importcpp: "wxScrollEvent(@)", header: wxh.}
proc getOrientation*(this: WxScrollEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetOrientation", header: wxh.}
proc getPosition*(this: WxScrollEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetPosition", header: wxh.}
proc setOrientation*(this: var WxScrollEvent; orient: cint) {.cdecl, 
    importcpp: "SetOrientation", header: wxh.}
proc setPosition*(this: var WxScrollEvent; pos: cint) {.cdecl, 
    importcpp: "SetPosition", header: wxh.}
proc clone*(this: WxScrollEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}

type 
  WxScrollWinEvent* {.importcpp: "wxScrollWinEvent", header: wxh.} = object of WxEvent
  

proc constructwxScrollWinEvent*(commandType: WxEventType = wxEVT_NULL; 
                                pos: cint = 0; orient: cint = 0): WxScrollWinEvent {.
    cdecl, constructor, importcpp: "wxScrollWinEvent(@)", header: wxh.}
proc constructwxScrollWinEvent*(event: WxScrollWinEvent): WxScrollWinEvent {.
    cdecl, constructor, importcpp: "wxScrollWinEvent(@)", header: wxh.}
proc getOrientation*(this: WxScrollWinEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetOrientation", header: wxh.}
proc getPosition*(this: WxScrollWinEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetPosition", header: wxh.}
proc setOrientation*(this: var WxScrollWinEvent; orient: cint) {.cdecl, 
    importcpp: "SetOrientation", header: wxh.}
proc setPosition*(this: var WxScrollWinEvent; pos: cint) {.cdecl, 
    importcpp: "SetPosition", header: wxh.}
proc clone*(this: WxScrollWinEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}

type 
  WxMouseWheelAxis* {.size: sizeof(cint), 
                      importcpp: "wxHelpEvent::wxMouseWheelAxis", header: wxh.} = enum 
    wxMOUSE_WHEEL_VERTICAL, wxMOUSE_WHEEL_HORIZONTAL


type 
  WxMouseEvent* {.importcpp: "wxMouseEvent", header: wxh.} = object of WxEvent
    mClickCount* {.importc: "m_clickCount".}: cint
    mWheelAxis* {.importc: "m_wheelAxis".}: WxMouseWheelAxis
    mWheelRotation* {.importc: "m_wheelRotation".}: cint
    mWheelDelta* {.importc: "m_wheelDelta".}: cint
    mLinesPerAction* {.importc: "m_linesPerAction".}: cint
    mColumnsPerAction* {.importc: "m_columnsPerAction".}: cint


proc constructwxMouseEvent*(mouseType: WxEventType = wxEVT_NULL): WxMouseEvent {.
    cdecl, constructor, importcpp: "wxMouseEvent(@)", header: wxh.}
proc constructwxMouseEvent*(event: WxMouseEvent): WxMouseEvent {.cdecl, 
    constructor, importcpp: "wxMouseEvent(@)", header: wxh.}
proc isButton*(this: WxMouseEvent): bool {.noSideEffect, cdecl, 
    importcpp: "IsButton", header: wxh.}
proc buttonDown*(this: WxMouseEvent; but: cint): bool {.noSideEffect, cdecl, 
    importcpp: "ButtonDown", header: wxh.}
proc buttonDClick*(this: WxMouseEvent; but: cint): bool {.noSideEffect, cdecl, 
    importcpp: "ButtonDClick", header: wxh.}
proc buttonUp*(this: WxMouseEvent; but: cint): bool {.noSideEffect, cdecl, 
    importcpp: "ButtonUp", header: wxh.}
proc button*(this: WxMouseEvent; but: cint): bool {.noSideEffect, cdecl, 
    importcpp: "Button", header: wxh.}
proc getButton*(this: WxMouseEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetButton", header: wxh.}
proc leftDown*(this: WxMouseEvent): bool {.noSideEffect, cdecl, 
    importcpp: "LeftDown", header: wxh.}
proc middleDown*(this: WxMouseEvent): bool {.noSideEffect, cdecl, 
    importcpp: "MiddleDown", header: wxh.}
proc rightDown*(this: WxMouseEvent): bool {.noSideEffect, cdecl, 
    importcpp: "RightDown", header: wxh.}
proc aux1Down*(this: WxMouseEvent): bool {.noSideEffect, cdecl, 
    importcpp: "Aux1Down", header: wxh.}
proc aux2Down*(this: WxMouseEvent): bool {.noSideEffect, cdecl, 
    importcpp: "Aux2Down", header: wxh.}
proc leftUp*(this: WxMouseEvent): bool {.noSideEffect, cdecl, 
    importcpp: "LeftUp", header: wxh.}
proc middleUp*(this: WxMouseEvent): bool {.noSideEffect, cdecl, 
    importcpp: "MiddleUp", header: wxh.}
proc rightUp*(this: WxMouseEvent): bool {.noSideEffect, cdecl, 
    importcpp: "RightUp", header: wxh.}
proc aux1Up*(this: WxMouseEvent): bool {.noSideEffect, cdecl, 
    importcpp: "Aux1Up", header: wxh.}
proc aux2Up*(this: WxMouseEvent): bool {.noSideEffect, cdecl, 
    importcpp: "Aux2Up", header: wxh.}
proc leftDClick*(this: WxMouseEvent): bool {.noSideEffect, cdecl, 
    importcpp: "LeftDClick", header: wxh.}
proc middleDClick*(this: WxMouseEvent): bool {.noSideEffect, cdecl, 
    importcpp: "MiddleDClick", header: wxh.}
proc rightDClick*(this: WxMouseEvent): bool {.noSideEffect, cdecl, 
    importcpp: "RightDClick", header: wxh.}
proc aux1DClick*(this: WxMouseEvent): bool {.noSideEffect, cdecl, 
    importcpp: "Aux1DClick", header: wxh.}
proc aux2DClick*(this: WxMouseEvent): bool {.noSideEffect, cdecl, 
    importcpp: "Aux2DClick", header: wxh.}
proc dragging*(this: WxMouseEvent): bool {.noSideEffect, cdecl, 
    importcpp: "Dragging", header: wxh.}
proc moving*(this: WxMouseEvent): bool {.noSideEffect, cdecl, 
    importcpp: "Moving", header: wxh.}
proc entering*(this: WxMouseEvent): bool {.noSideEffect, cdecl, 
    importcpp: "Entering", header: wxh.}
proc leaving*(this: WxMouseEvent): bool {.noSideEffect, cdecl, 
    importcpp: "Leaving", header: wxh.}
proc getClickCount*(this: WxMouseEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetClickCount", header: wxh.}
proc getWheelRotation*(this: WxMouseEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetWheelRotation", header: wxh.}
proc getWheelDelta*(this: WxMouseEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetWheelDelta", header: wxh.}
proc getWheelAxis*(this: WxMouseEvent): WxMouseWheelAxis {.noSideEffect, cdecl, 
    importcpp: "GetWheelAxis", header: wxh.}
proc getLinesPerAction*(this: WxMouseEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetLinesPerAction", header: wxh.}
proc getColumnsPerAction*(this: WxMouseEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetColumnsPerAction", header: wxh.}
proc isPageScroll*(this: WxMouseEvent): bool {.noSideEffect, cdecl, 
    importcpp: "IsPageScroll", header: wxh.}
proc clone*(this: WxMouseEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}
proc getEventCategory*(this: WxMouseEvent): WxEventCategory {.noSideEffect, 
    cdecl, importcpp: "GetEventCategory", header: wxh.}

type 
  WxSetCursorEvent* {.importcpp: "wxSetCursorEvent", header: wxh.} = object of WxEvent
  

proc constructwxSetCursorEvent*(x: WxCoord = 0; y: WxCoord = 0): WxSetCursorEvent {.
    cdecl, constructor, importcpp: "wxSetCursorEvent(@)", header: wxh.}
proc constructwxSetCursorEvent*(event: WxSetCursorEvent): WxSetCursorEvent {.
    cdecl, constructor, importcpp: "wxSetCursorEvent(@)", header: wxh.}
proc getX*(this: WxSetCursorEvent): WxCoord {.noSideEffect, cdecl, 
    importcpp: "GetX", header: wxh.}
proc getY*(this: WxSetCursorEvent): WxCoord {.noSideEffect, cdecl, 
    importcpp: "GetY", header: wxh.}
proc hasCursor*(this: WxSetCursorEvent): bool {.noSideEffect, cdecl, 
    importcpp: "HasCursor", header: wxh.}
proc clone*(this: WxSetCursorEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}

type 
  WxKeyCategoryFlags* {.size: sizeof(cint), 
                        importcpp: "wxHelpEvent::wxKeyCategoryFlags", 
                        header: wxh.} = enum 
    WXK_CATEGORY_ARROW = 1, WXK_CATEGORY_PAGING = 2, WXK_CATEGORY_JUMP = 4, 
    WXK_CATEGORY_NAVIGATION = 1 or 2 or 4, WXK_CATEGORY_TAB = 8, 
    WXK_CATEGORY_CUT = 16


type 
  WxChar* = uint32
  WxKeyEvent* {.importcpp: "wxKeyEvent", header: wxh.} = object of WxEvent
    mX* {.importc: "m_x".}: WxCoord
    mY* {.importc: "m_y".}: WxCoord
    mKeyCode* {.importc: "m_keyCode".}: clong
    mUniChar* {.importc: "m_uniChar".}: WxChar
    mRawCode* {.importc: "m_rawCode".}: WxUint32
    mRawFlags* {.importc: "m_rawFlags".}: WxUint32


proc constructwxKeyEvent*(keyType: WxEventType = wxEVT_NULL): WxKeyEvent {.
    cdecl, constructor, importcpp: "wxKeyEvent(@)", header: wxh.}
proc constructwxKeyEvent*(evt: WxKeyEvent): WxKeyEvent {.cdecl, constructor, 
    importcpp: "wxKeyEvent(@)", header: wxh.}
proc constructwxKeyEvent*(eventType: WxEventType; evt: WxKeyEvent): WxKeyEvent {.
    cdecl, constructor, importcpp: "wxKeyEvent(@)", header: wxh.}
proc getKeyCode*(this: WxKeyEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetKeyCode", header: wxh.}
proc isKeyInCategory*(this: WxKeyEvent; category: cint): bool {.noSideEffect, 
    cdecl, importcpp: "IsKeyInCategory", header: wxh.}
proc getUnicodeKey*(this: WxKeyEvent): WxChar {.noSideEffect, cdecl, 
    importcpp: "GetUnicodeKey", header: wxh.}
proc getRawKeyCode*(this: WxKeyEvent): WxUint32 {.noSideEffect, cdecl, 
    importcpp: "GetRawKeyCode", header: wxh.}
proc getRawKeyFlags*(this: WxKeyEvent): WxUint32 {.noSideEffect, cdecl, 
    importcpp: "GetRawKeyFlags", header: wxh.}
proc getPosition*(this: WxKeyEvent; xpos: ptr WxCoord; ypos: ptr WxCoord) {.
    noSideEffect, cdecl, importcpp: "GetPosition", header: wxh.}
proc getPosition*(this: WxKeyEvent): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetPosition", header: wxh.}
proc getX*(this: WxKeyEvent): WxCoord {.noSideEffect, cdecl, importcpp: "GetX", 
                                        header: wxh.}
proc getY*(this: WxKeyEvent): WxCoord {.noSideEffect, cdecl, importcpp: "GetY", 
                                        header: wxh.}
proc doAllowNextEvent*(this: var WxKeyEvent) {.cdecl, 
    importcpp: "DoAllowNextEvent", header: wxh.}
proc isNextEventAllowed*(this: WxKeyEvent): bool {.noSideEffect, cdecl, 
    importcpp: "IsNextEventAllowed", header: wxh.}
proc clone*(this: WxKeyEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}
proc getEventCategory*(this: WxKeyEvent): WxEventCategory {.noSideEffect, cdecl, 
    importcpp: "GetEventCategory", header: wxh.}

type 
  WxSizeEvent* {.importcpp: "wxSizeEvent", header: wxh.} = object of WxEvent
    mSize* {.importc: "m_size".}: WxSize
    mRect* {.importc: "m_rect".}: WxRect


proc constructwxSizeEvent*(): WxSizeEvent {.cdecl, constructor, 
    importcpp: "wxSizeEvent(@)", header: wxh.}
proc constructwxSizeEvent*(sz: WxSize; winid: cint = 0): WxSizeEvent {.cdecl, 
    constructor, importcpp: "wxSizeEvent(@)", header: wxh.}
proc constructwxSizeEvent*(event: WxSizeEvent): WxSizeEvent {.cdecl, 
    constructor, importcpp: "wxSizeEvent(@)", header: wxh.}
proc constructwxSizeEvent*(rect: WxRect; id: cint = 0): WxSizeEvent {.cdecl, 
    constructor, importcpp: "wxSizeEvent(@)", header: wxh.}
proc getSize*(this: WxSizeEvent): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetSize", header: wxh.}
proc setSize*(this: var WxSizeEvent; size: WxSize) {.cdecl, 
    importcpp: "SetSize", header: wxh.}
proc getRect*(this: WxSizeEvent): WxRect {.noSideEffect, cdecl, 
    importcpp: "GetRect", header: wxh.}
proc setRect*(this: var WxSizeEvent; rect: WxRect) {.cdecl, 
    importcpp: "SetRect", header: wxh.}
proc clone*(this: WxSizeEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}

type 
  WxMoveEvent* {.importcpp: "wxMoveEvent", header: wxh.} = object of WxEvent
  

proc constructwxMoveEvent*(): WxMoveEvent {.cdecl, constructor, 
    importcpp: "wxMoveEvent(@)", header: wxh.}
proc constructwxMoveEvent*(pos: WxPoint; winid: cint = 0): WxMoveEvent {.cdecl, 
    constructor, importcpp: "wxMoveEvent(@)", header: wxh.}
proc constructwxMoveEvent*(event: WxMoveEvent): WxMoveEvent {.cdecl, 
    constructor, importcpp: "wxMoveEvent(@)", header: wxh.}
proc constructwxMoveEvent*(rect: WxRect; id: cint = 0): WxMoveEvent {.cdecl, 
    constructor, importcpp: "wxMoveEvent(@)", header: wxh.}
proc getPosition*(this: WxMoveEvent): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetPosition", header: wxh.}
proc setPosition*(this: var WxMoveEvent; pos: WxPoint) {.cdecl, 
    importcpp: "SetPosition", header: wxh.}
proc getRect*(this: WxMoveEvent): WxRect {.noSideEffect, cdecl, 
    importcpp: "GetRect", header: wxh.}
proc setRect*(this: var WxMoveEvent; rect: WxRect) {.cdecl, 
    importcpp: "SetRect", header: wxh.}
proc clone*(this: WxMoveEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}
type 
  WxPaintEvent* {.importcpp: "wxPaintEvent", header: wxh.} = object of WxEvent
  

proc constructwxPaintEvent*(id: cint = 0): WxPaintEvent {.cdecl, constructor, 
    importcpp: "wxPaintEvent(@)", header: wxh.}
proc clone*(this: WxPaintEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}
type 
  WxNcPaintEvent* {.importcpp: "wxNcPaintEvent", header: wxh.} = object of WxEvent
  

proc constructwxNcPaintEvent*(winid: cint = 0): WxNcPaintEvent {.cdecl, 
    constructor, importcpp: "wxNcPaintEvent(@)", header: wxh.}
proc clone*(this: WxNcPaintEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}

type 
  WxEraseEvent* {.importcpp: "wxEraseEvent", header: wxh.} = object of WxEvent
  

proc constructwxEraseEvent*(id: cint = 0; dc: pointer = nil): WxEraseEvent {.
    cdecl, constructor, importcpp: "wxEraseEvent(@)", header: wxh.}
proc constructwxEraseEvent*(event: WxEraseEvent): WxEraseEvent {.cdecl, 
    constructor, importcpp: "wxEraseEvent(@)", header: wxh.}
proc getDC*(this: WxEraseEvent): pointer {.noSideEffect, cdecl, 
    importcpp: "GetDC", header: wxh.}
proc clone*(this: WxEraseEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}

type 
  WxFocusEvent* {.importcpp: "wxFocusEvent", header: wxh.} = object of WxEvent
  

proc constructwxFocusEvent*(`type`: WxEventType = wxEVT_NULL; winid: cint = 0): WxFocusEvent {.
    cdecl, constructor, importcpp: "wxFocusEvent(@)", header: wxh.}
proc constructwxFocusEvent*(event: WxFocusEvent): WxFocusEvent {.cdecl, 
    constructor, importcpp: "wxFocusEvent(@)", header: wxh.}
proc getWindow*(this: WxFocusEvent): ptr WxWindow {.noSideEffect, cdecl, 
    importcpp: "GetWindow", header: wxh.}
proc setWindow*(this: var WxFocusEvent; win: ptr WxWindow) {.cdecl, 
    importcpp: "SetWindow", header: wxh.}
proc clone*(this: WxFocusEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}

type 
  WxChildFocusEvent* {.importcpp: "wxChildFocusEvent", header: wxh.} = object of WxCommandEvent
  

proc constructwxChildFocusEvent*(win: ptr WxWindow = nil): WxChildFocusEvent {.
    cdecl, constructor, importcpp: "wxChildFocusEvent(@)", header: wxh.}
proc getWindow*(this: WxChildFocusEvent): ptr WxWindow {.noSideEffect, cdecl, 
    importcpp: "GetWindow", header: wxh.}
proc clone*(this: WxChildFocusEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}

type 
  WxActivateEvent* {.importcpp: "wxActivateEvent", header: wxh.} = object of WxEvent
  
  Reason* {.size: sizeof(cint), importcpp: "wxActivateEvent::Reason", 
            header: wxh.} = enum 
    ReasonMouse, ReasonUnknown


proc constructwxActivateEvent*(`type`: WxEventType = wxEVT_NULL; 
                               active: bool = true; id: cint = 0; 
                               activationReason: Reason = Reason_Unknown): WxActivateEvent {.
    cdecl, constructor, importcpp: "wxActivateEvent(@)", header: wxh.}
proc constructwxActivateEvent*(event: WxActivateEvent): WxActivateEvent {.cdecl, 
    constructor, importcpp: "wxActivateEvent(@)", header: wxh.}
proc getActive*(this: WxActivateEvent): bool {.noSideEffect, cdecl, 
    importcpp: "GetActive", header: wxh.}
proc getActivationReason*(this: WxActivateEvent): Reason {.noSideEffect, cdecl, 
    importcpp: "GetActivationReason", header: wxh.}
proc clone*(this: WxActivateEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}

type 
  WxInitDialogEvent* {.importcpp: "wxInitDialogEvent", header: wxh.} = object of WxEvent
  

proc constructwxInitDialogEvent*(id: cint = 0): WxInitDialogEvent {.cdecl, 
    constructor, importcpp: "wxInitDialogEvent(@)", header: wxh.}
proc clone*(this: WxInitDialogEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}

type 
  WxMenuEvent* {.importcpp: "wxMenuEvent", header: wxh.} = object of WxEvent
  

proc constructwxMenuEvent*(`type`: WxEventType = wxEVT_NULL; winid: cint = 0; 
                           menu: ptr WxMenu = nil): WxMenuEvent {.cdecl, 
    constructor, importcpp: "wxMenuEvent(@)", header: wxh.}
proc constructwxMenuEvent*(event: WxMenuEvent): WxMenuEvent {.cdecl, 
    constructor, importcpp: "wxMenuEvent(@)", header: wxh.}
proc getMenuId*(this: WxMenuEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetMenuId", header: wxh.}
proc isPopup*(this: WxMenuEvent): bool {.noSideEffect, cdecl, 
    importcpp: "IsPopup", header: wxh.}
proc getMenu*(this: WxMenuEvent): ptr WxMenu {.noSideEffect, cdecl, 
    importcpp: "GetMenu", header: wxh.}
proc clone*(this: WxMenuEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}

type 
  WxCloseEvent* {.importcpp: "wxCloseEvent", header: wxh.} = object of WxEvent
  

proc constructwxCloseEvent*(`type`: WxEventType = wxEVT_NULL; winid: cint = 0): WxCloseEvent {.
    cdecl, constructor, importcpp: "wxCloseEvent(@)", header: wxh.}
proc constructwxCloseEvent*(event: WxCloseEvent): WxCloseEvent {.cdecl, 
    constructor, importcpp: "wxCloseEvent(@)", header: wxh.}
proc setLoggingOff*(this: var WxCloseEvent; logOff: bool) {.cdecl, 
    importcpp: "SetLoggingOff", header: wxh.}
proc getLoggingOff*(this: WxCloseEvent): bool {.noSideEffect, cdecl, 
    importcpp: "GetLoggingOff", header: wxh.}
proc veto*(this: var WxCloseEvent; veto: bool = true) {.cdecl, 
    importcpp: "Veto", header: wxh.}
proc setCanVeto*(this: var WxCloseEvent; canVeto: bool) {.cdecl, 
    importcpp: "SetCanVeto", header: wxh.}
proc canVeto*(this: WxCloseEvent): bool {.noSideEffect, cdecl, 
    importcpp: "CanVeto", header: wxh.}
proc getVeto*(this: WxCloseEvent): bool {.noSideEffect, cdecl, 
    importcpp: "GetVeto", header: wxh.}
proc clone*(this: WxCloseEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}

type 
  WxShowEvent* {.importcpp: "wxShowEvent", header: wxh.} = object of WxEvent
  

proc constructwxShowEvent*(winid: cint = 0; show: bool = false): WxShowEvent {.
    cdecl, constructor, importcpp: "wxShowEvent(@)", header: wxh.}
proc constructwxShowEvent*(event: WxShowEvent): WxShowEvent {.cdecl, 
    constructor, importcpp: "wxShowEvent(@)", header: wxh.}
proc setShow*(this: var WxShowEvent; show: bool) {.cdecl, importcpp: "SetShow", 
    header: wxh.}
proc isShown*(this: WxShowEvent): bool {.noSideEffect, cdecl, 
    importcpp: "IsShown", header: wxh.}
proc clone*(this: WxShowEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}

type 
  WxIconizeEvent* {.importcpp: "wxIconizeEvent", header: wxh.} = object of WxEvent
  

proc constructwxIconizeEvent*(winid: cint = 0; iconized: bool = true): WxIconizeEvent {.
    cdecl, constructor, importcpp: "wxIconizeEvent(@)", header: wxh.}
proc constructwxIconizeEvent*(event: WxIconizeEvent): WxIconizeEvent {.cdecl, 
    constructor, importcpp: "wxIconizeEvent(@)", header: wxh.}
proc isIconized*(this: WxIconizeEvent): bool {.noSideEffect, cdecl, 
    importcpp: "IsIconized", header: wxh.}
proc clone*(this: WxIconizeEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}

type 
  WxMaximizeEvent* {.importcpp: "wxMaximizeEvent", header: wxh.} = object of WxEvent
  

proc constructwxMaximizeEvent*(winid: cint = 0): WxMaximizeEvent {.cdecl, 
    constructor, importcpp: "wxMaximizeEvent(@)", header: wxh.}
proc clone*(this: WxMaximizeEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}

const 
  wxJOYSTICK1* = 0
  wxJOYSTICK2* = 1


const 
  wxJOY_BUTTON_ANY* = - 1
  wxJOY_BUTTON1* = 1
  wxJOY_BUTTON2* = 2
  wxJOY_BUTTON3* = 4
  wxJOY_BUTTON4* = 8

type 
  WxJoystickEvent* {.importcpp: "wxJoystickEvent", header: wxh.} = object of WxEvent
  

proc constructwxJoystickEvent*(`type`: WxEventType = wxEVT_NULL; 
                               state: cint = 0; joystick: cint = wxJOYSTICK1; 
                               change: cint = 0): WxJoystickEvent {.cdecl, 
    constructor, importcpp: "wxJoystickEvent(@)", header: wxh.}
proc constructwxJoystickEvent*(event: WxJoystickEvent): WxJoystickEvent {.cdecl, 
    constructor, importcpp: "wxJoystickEvent(@)", header: wxh.}
proc getPosition*(this: WxJoystickEvent): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetPosition", header: wxh.}
proc getZPosition*(this: WxJoystickEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetZPosition", header: wxh.}
proc getButtonState*(this: WxJoystickEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetButtonState", header: wxh.}
proc getButtonChange*(this: WxJoystickEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetButtonChange", header: wxh.}
proc getJoystick*(this: WxJoystickEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetJoystick", header: wxh.}
proc setJoystick*(this: var WxJoystickEvent; stick: cint) {.cdecl, 
    importcpp: "SetJoystick", header: wxh.}
proc setButtonState*(this: var WxJoystickEvent; state: cint) {.cdecl, 
    importcpp: "SetButtonState", header: wxh.}
proc setButtonChange*(this: var WxJoystickEvent; change: cint) {.cdecl, 
    importcpp: "SetButtonChange", header: wxh.}
proc setPosition*(this: var WxJoystickEvent; pos: WxPoint) {.cdecl, 
    importcpp: "SetPosition", header: wxh.}
proc setZPosition*(this: var WxJoystickEvent; zPos: cint) {.cdecl, 
    importcpp: "SetZPosition", header: wxh.}
proc isButton*(this: WxJoystickEvent): bool {.noSideEffect, cdecl, 
    importcpp: "IsButton", header: wxh.}
proc isMove*(this: WxJoystickEvent): bool {.noSideEffect, cdecl, 
    importcpp: "IsMove", header: wxh.}
proc isZMove*(this: WxJoystickEvent): bool {.noSideEffect, cdecl, 
    importcpp: "IsZMove", header: wxh.}
proc buttonDown*(this: WxJoystickEvent; but: cint = wxJOY_BUTTON_ANY): bool {.
    noSideEffect, cdecl, importcpp: "ButtonDown", header: wxh.}
proc buttonUp*(this: WxJoystickEvent; but: cint = wxJOY_BUTTON_ANY): bool {.
    noSideEffect, cdecl, importcpp: "ButtonUp", header: wxh.}
proc buttonIsDown*(this: WxJoystickEvent; but: cint = wxJOY_BUTTON_ANY): bool {.
    noSideEffect, cdecl, importcpp: "ButtonIsDown", header: wxh.}
proc clone*(this: WxJoystickEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}

type 
  WxDropFilesEvent* {.importcpp: "wxDropFilesEvent", header: wxh.} = object of WxEvent
    mNoFiles* {.importc: "m_noFiles".}: cint
    mPos* {.importc: "m_pos".}: WxPoint
    mFiles* {.importc: "m_files".}: ptr WxString


proc constructwxDropFilesEvent*(`type`: WxEventType = wxEVT_NULL; 
                                noFiles: cint = 0; files: ptr WxString = nil): WxDropFilesEvent {.
    cdecl, constructor, importcpp: "wxDropFilesEvent(@)", header: wxh.}
proc constructwxDropFilesEvent*(other: WxDropFilesEvent): WxDropFilesEvent {.
    cdecl, constructor, importcpp: "wxDropFilesEvent(@)", header: wxh.}
proc destroywxDropFilesEvent*(this: var WxDropFilesEvent) {.cdecl, 
    importcpp: "#.~wxDropFilesEvent()", header: wxh.}
proc getPosition*(this: WxDropFilesEvent): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetPosition", header: wxh.}
proc getNumberOfFiles*(this: WxDropFilesEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetNumberOfFiles", header: wxh.}
proc getFiles*(this: WxDropFilesEvent): ptr WxString {.noSideEffect, cdecl, 
    importcpp: "GetFiles", header: wxh.}
proc clone*(this: WxDropFilesEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}

type 
  WxUpdateUIMode* {.size: sizeof(cint), 
                    importcpp: "wxHelpEvent::wxUpdateUIMode", header: wxh.} = enum 
    wxUPDATE_UI_PROCESS_ALL, wxUPDATE_UI_PROCESS_SPECIFIED


type 
  WxUpdateUIEvent* {.importcpp: "wxUpdateUIEvent", header: wxh.} = object of WxCommandEvent
  

proc constructwxUpdateUIEvent*(commandId: WxWindowID = WxWindowID(0)): WxUpdateUIEvent {.
    cdecl, constructor, importcpp: "wxUpdateUIEvent(@)", header: wxh.}
proc constructwxUpdateUIEvent*(event: WxUpdateUIEvent): WxUpdateUIEvent {.cdecl, 
    constructor, importcpp: "wxUpdateUIEvent(@)", header: wxh.}
proc getChecked*(this: WxUpdateUIEvent): bool {.noSideEffect, cdecl, 
    importcpp: "GetChecked", header: wxh.}
proc getEnabled*(this: WxUpdateUIEvent): bool {.noSideEffect, cdecl, 
    importcpp: "GetEnabled", header: wxh.}
proc getShown*(this: WxUpdateUIEvent): bool {.noSideEffect, cdecl, 
    importcpp: "GetShown", header: wxh.}
proc getText*(this: WxUpdateUIEvent): WxString {.noSideEffect, cdecl, 
    importcpp: "GetText", header: wxh.}
proc getSetText*(this: WxUpdateUIEvent): bool {.noSideEffect, cdecl, 
    importcpp: "GetSetText", header: wxh.}
proc getSetChecked*(this: WxUpdateUIEvent): bool {.noSideEffect, cdecl, 
    importcpp: "GetSetChecked", header: wxh.}
proc getSetEnabled*(this: WxUpdateUIEvent): bool {.noSideEffect, cdecl, 
    importcpp: "GetSetEnabled", header: wxh.}
proc getSetShown*(this: WxUpdateUIEvent): bool {.noSideEffect, cdecl, 
    importcpp: "GetSetShown", header: wxh.}
proc check*(this: var WxUpdateUIEvent; check: bool) {.cdecl, importcpp: "Check", 
    header: wxh.}
proc enable*(this: var WxUpdateUIEvent; enable: bool) {.cdecl, 
    importcpp: "Enable", header: wxh.}
proc show*(this: var WxUpdateUIEvent; show: bool) {.cdecl, importcpp: "Show", 
    header: wxh.}
proc setText*(this: var WxUpdateUIEvent; text: WxString) {.cdecl, 
    importcpp: "SetText", header: wxh.}
proc setUpdateInterval*(updateInterval: clong) {.cdecl, 
    importcpp: "wxUpdateUIEvent::SetUpdateInterval(@)", header: wxh.}
proc getUpdateInterval*(): clong {.cdecl, importcpp: "wxUpdateUIEvent::GetUpdateInterval(@)", 
                                   header: wxh.}
proc canUpdate*(win: ptr WxWindowBase): bool {.cdecl, 
    importcpp: "wxUpdateUIEvent::CanUpdate(@)", header: wxh.}
proc resetUpdateTime*() {.cdecl, 
                          importcpp: "wxUpdateUIEvent::ResetUpdateTime(@)", 
                          header: wxh.}
proc setMode*(mode: WxUpdateUIMode) {.cdecl, 
                                      importcpp: "wxUpdateUIEvent::SetMode(@)", 
                                      header: wxh.}
proc updateUIEventGetMode*(): WxUpdateUIMode {.cdecl, 
                                  importcpp: "wxUpdateUIEvent::GetMode(@)", 
                                  header: wxh.}
proc clone*(this: WxUpdateUIEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}

type 
  WxSysColourChangedEvent* {.importcpp: "wxSysColourChangedEvent", header: wxh.} = object of WxEvent
  

proc constructwxSysColourChangedEvent*(): WxSysColourChangedEvent {.cdecl, 
    constructor, importcpp: "wxSysColourChangedEvent(@)", header: wxh.}
proc clone*(this: WxSysColourChangedEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}

type 
  WxMouseCaptureChangedEvent* {.importcpp: "wxMouseCaptureChangedEvent", 
                                header: wxh.} = object of WxEvent
  

proc constructwxMouseCaptureChangedEvent*(winid: WxWindowID = WxWindowID(0); 
    gainedCapture: ptr WxWindow = nil): WxMouseCaptureChangedEvent {.cdecl, 
    constructor, importcpp: "wxMouseCaptureChangedEvent(@)", header: wxh.}
proc constructwxMouseCaptureChangedEvent*(event: WxMouseCaptureChangedEvent): WxMouseCaptureChangedEvent {.
    cdecl, constructor, importcpp: "wxMouseCaptureChangedEvent(@)", header: wxh.}
proc clone*(this: WxMouseCaptureChangedEvent): ptr WxEvent {.noSideEffect, 
    cdecl, importcpp: "Clone", header: wxh.}
proc getCapturedWindow*(this: WxMouseCaptureChangedEvent): ptr WxWindow {.
    noSideEffect, cdecl, importcpp: "GetCapturedWindow", header: wxh.}

type 
  WxMouseCaptureLostEvent* {.importcpp: "wxMouseCaptureLostEvent", header: wxh.} = object of WxEvent
  

proc constructwxMouseCaptureLostEvent*(winid: WxWindowID = WxWindowID(0)): WxMouseCaptureLostEvent {.
    cdecl, constructor, importcpp: "wxMouseCaptureLostEvent(@)", header: wxh.}
proc constructwxMouseCaptureLostEvent*(event: WxMouseCaptureLostEvent): WxMouseCaptureLostEvent {.
    cdecl, constructor, importcpp: "wxMouseCaptureLostEvent(@)", header: wxh.}
proc clone*(this: WxMouseCaptureLostEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}

type 
  WxDisplayChangedEvent* {.importcpp: "wxDisplayChangedEvent", header: wxh.} = object of WxEvent
  

proc constructwxDisplayChangedEvent*(): WxDisplayChangedEvent {.cdecl, 
    constructor, importcpp: "wxDisplayChangedEvent(@)", header: wxh.}
proc clone*(this: WxDisplayChangedEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}

type 
  WxPaletteChangedEvent* {.importcpp: "wxPaletteChangedEvent", header: wxh.} = object of WxEvent
  

proc constructwxPaletteChangedEvent*(winid: WxWindowID = WxWindowID(0)): WxPaletteChangedEvent {.
    cdecl, constructor, importcpp: "wxPaletteChangedEvent(@)", header: wxh.}
proc constructwxPaletteChangedEvent*(event: WxPaletteChangedEvent): WxPaletteChangedEvent {.
    cdecl, constructor, importcpp: "wxPaletteChangedEvent(@)", header: wxh.}
proc setChangedWindow*(this: var WxPaletteChangedEvent; win: ptr WxWindow) {.
    cdecl, importcpp: "SetChangedWindow", header: wxh.}
proc getChangedWindow*(this: WxPaletteChangedEvent): ptr WxWindow {.
    noSideEffect, cdecl, importcpp: "GetChangedWindow", header: wxh.}
proc clone*(this: WxPaletteChangedEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}

type 
  WxQueryNewPaletteEvent* {.importcpp: "wxQueryNewPaletteEvent", header: wxh.} = object of WxEvent
  

proc constructwxQueryNewPaletteEvent*(winid: WxWindowID = WxWindowID(0)): WxQueryNewPaletteEvent {.
    cdecl, constructor, importcpp: "wxQueryNewPaletteEvent(@)", header: wxh.}
proc constructwxQueryNewPaletteEvent*(event: WxQueryNewPaletteEvent): WxQueryNewPaletteEvent {.
    cdecl, constructor, importcpp: "wxQueryNewPaletteEvent(@)", header: wxh.}
proc setPaletteRealized*(this: var WxQueryNewPaletteEvent; realized: bool) {.
    cdecl, importcpp: "SetPaletteRealized", header: wxh.}
proc getPaletteRealized*(this: WxQueryNewPaletteEvent): bool {.noSideEffect, 
    cdecl, importcpp: "GetPaletteRealized", header: wxh.}
proc clone*(this: WxQueryNewPaletteEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}

type 
  WxNavigationKeyEvent* {.importcpp: "wxNavigationKeyEvent", header: wxh.} = object of WxEvent
    mFlags* {.importc: "m_flags".}: clong
    mFocus* {.importc: "m_focus".}: ptr WxWindow


proc constructwxNavigationKeyEvent*(): WxNavigationKeyEvent {.cdecl, 
    constructor, importcpp: "wxNavigationKeyEvent(@)", header: wxh.}
proc constructwxNavigationKeyEvent*(event: WxNavigationKeyEvent): WxNavigationKeyEvent {.
    cdecl, constructor, importcpp: "wxNavigationKeyEvent(@)", header: wxh.}
proc getDirection*(this: WxNavigationKeyEvent): bool {.noSideEffect, cdecl, 
    importcpp: "GetDirection", header: wxh.}
proc setDirection*(this: var WxNavigationKeyEvent; bForward: bool) {.cdecl, 
    importcpp: "SetDirection", header: wxh.}
proc isWindowChange*(this: WxNavigationKeyEvent): bool {.noSideEffect, cdecl, 
    importcpp: "IsWindowChange", header: wxh.}
proc setWindowChange*(this: var WxNavigationKeyEvent; bIs: bool) {.cdecl, 
    importcpp: "SetWindowChange", header: wxh.}
proc isFromTab*(this: WxNavigationKeyEvent): bool {.noSideEffect, cdecl, 
    importcpp: "IsFromTab", header: wxh.}
proc setFromTab*(this: var WxNavigationKeyEvent; bIs: bool) {.cdecl, 
    importcpp: "SetFromTab", header: wxh.}
proc getCurrentFocus*(this: WxNavigationKeyEvent): ptr WxWindow {.noSideEffect, 
    cdecl, importcpp: "GetCurrentFocus", header: wxh.}
proc setCurrentFocus*(this: var WxNavigationKeyEvent; win: ptr WxWindow) {.
    cdecl, importcpp: "SetCurrentFocus", header: wxh.}
proc setFlags*(this: var WxNavigationKeyEvent; flags: clong) {.cdecl, 
    importcpp: "SetFlags", header: wxh.}
proc clone*(this: WxNavigationKeyEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}
type 
  WxNavigationKeyEventFlags* {.size: sizeof(cint), importcpp: "wxNavigationKeyEvent::wxNavigationKeyEventFlags", 
                               header: wxh.} = enum 
    IsBackward = 0x00000000, IsForward = 0x00000001, WinChange = 0x00000002, 
    FromTab = 0x00000004



type 
  WxWindowCreateEvent* {.importcpp: "wxWindowCreateEvent", header: wxh.} = object of WxCommandEvent
  

proc constructwxWindowCreateEvent*(win: ptr WxWindow = nil): WxWindowCreateEvent {.
    cdecl, constructor, importcpp: "wxWindowCreateEvent(@)", header: wxh.}
proc getWindow*(this: WxWindowCreateEvent): ptr WxWindow {.noSideEffect, cdecl, 
    importcpp: "GetWindow", header: wxh.}
proc clone*(this: WxWindowCreateEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}
type 
  WxWindowDestroyEvent* {.importcpp: "wxWindowDestroyEvent", header: wxh.} = object of WxCommandEvent
  

proc constructwxWindowDestroyEvent*(win: ptr WxWindow = nil): WxWindowDestroyEvent {.
    cdecl, constructor, importcpp: "wxWindowDestroyEvent(@)", header: wxh.}
proc getWindow*(this: WxWindowDestroyEvent): ptr WxWindow {.noSideEffect, cdecl, 
    importcpp: "GetWindow", header: wxh.}
proc clone*(this: WxWindowDestroyEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}

type 
  WxHelpEvent* {.importcpp: "wxHelpEvent", header: wxh.} = object of WxCommandEvent
  
  Origin* {.size: sizeof(cint), importcpp: "wxHelpEvent::Origin", header: wxh.} = enum 
    OriginUnknown, OriginKeyboard, OriginHelpButton


proc constructwxHelpEvent*(`type`: WxEventType = wxEVT_NULL; 
                           winid: WxWindowID = WxWindowID(0); 
                           pt: WxPoint = wxDefaultPosition; 
                           origin: Origin = Origin_Unknown): WxHelpEvent {.
    cdecl, constructor, importcpp: "wxHelpEvent(@)", header: wxh.}
proc constructwxHelpEvent*(event: WxHelpEvent): WxHelpEvent {.cdecl, 
    constructor, importcpp: "wxHelpEvent(@)", header: wxh.}
proc getPosition*(this: WxHelpEvent): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetPosition", header: wxh.}
proc setPosition*(this: var WxHelpEvent; pos: WxPoint) {.cdecl, 
    importcpp: "SetPosition", header: wxh.}
proc getLink*(this: WxHelpEvent): WxString {.noSideEffect, cdecl, 
    importcpp: "GetLink", header: wxh.}
proc setLink*(this: var WxHelpEvent; link: WxString) {.cdecl, 
    importcpp: "SetLink", header: wxh.}
proc getTarget*(this: WxHelpEvent): WxString {.noSideEffect, cdecl, 
    importcpp: "GetTarget", header: wxh.}
proc setTarget*(this: var WxHelpEvent; target: WxString) {.cdecl, 
    importcpp: "SetTarget", header: wxh.}
proc clone*(this: WxHelpEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}
proc getOrigin*(this: WxHelpEvent): Origin {.noSideEffect, cdecl, 
    importcpp: "GetOrigin", header: wxh.}
proc setOrigin*(this: var WxHelpEvent; origin: Origin) {.cdecl, 
    importcpp: "SetOrigin", header: wxh.}

type 
  WxClipboardTextEvent* {.importcpp: "wxClipboardTextEvent", header: wxh.} = object of WxCommandEvent
  

proc constructwxClipboardTextEvent*(`type`: WxEventType = wxEVT_NULL; 
                                    winid: WxWindowID = WxWindowID(0)): WxClipboardTextEvent {.
    cdecl, constructor, importcpp: "wxClipboardTextEvent(@)", header: wxh.}
proc constructwxClipboardTextEvent*(event: WxClipboardTextEvent): WxClipboardTextEvent {.
    cdecl, constructor, importcpp: "wxClipboardTextEvent(@)", header: wxh.}
proc clone*(this: WxClipboardTextEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}

type 
  WxContextMenuEvent* {.importcpp: "wxContextMenuEvent", header: wxh.} = object of WxCommandEvent
  

proc constructwxContextMenuEvent*(`type`: WxEventType = wxEVT_NULL; 
                                  winid: WxWindowID = WxWindowID(0); 
                                  pt: WxPoint = wxDefaultPosition): WxContextMenuEvent {.
    cdecl, constructor, importcpp: "wxContextMenuEvent(@)", header: wxh.}
proc constructwxContextMenuEvent*(event: WxContextMenuEvent): WxContextMenuEvent {.
    cdecl, constructor, importcpp: "wxContextMenuEvent(@)", header: wxh.}
proc getPosition*(this: WxContextMenuEvent): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetPosition", header: wxh.}
proc setPosition*(this: var WxContextMenuEvent; pos: WxPoint) {.cdecl, 
    importcpp: "SetPosition", header: wxh.}
proc clone*(this: WxContextMenuEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}


type 
  WxEventTableEntryBase* {.importcpp: "wxEventTableEntryBase", header: wxh, 
                           inheritable.} = object 
    mId* {.importc: "m_id".}: cint
    mLastId* {.importc: "m_lastId".}: cint
    mFn* {.importc: "m_fn".}: ptr WxEventFunctor
    mCallbackUserData* {.importc: "m_callbackUserData".}: ptr WxObject


proc constructwxEventTableEntryBase*(winid: cint; idLast: cint; 
                                     fn: ptr WxEventFunctor; data: ptr WxObject): WxEventTableEntryBase {.
    cdecl, constructor, importcpp: "wxEventTableEntryBase(@)", header: wxh.}
proc constructwxEventTableEntryBase*(entry: WxEventTableEntryBase): WxEventTableEntryBase {.
    cdecl, constructor, importcpp: "wxEventTableEntryBase(@)", header: wxh.}
proc destroywxEventTableEntryBase*(this: var WxEventTableEntryBase) {.cdecl, 
    importcpp: "#.~wxEventTableEntryBase()", header: wxh.}

type 
  WxEventTableEntry* {.importcpp: "wxEventTableEntry", header: wxh.} = object of WxEventTableEntryBase
    mEventType* {.importc: "m_eventType".}: cint


proc constructwxEventTableEntry*(evType: cint; winid: cint; idLast: cint; 
                                 fn: ptr WxEventFunctor; data: ptr WxObject): WxEventTableEntry {.
    cdecl, constructor, importcpp: "wxEventTableEntry(@)", header: wxh.}

type 
  WxDynamicEventTableEntry* {.importcpp: "wxDynamicEventTableEntry", header: wxh.} = object of WxEventTableEntryBase
    mEventType* {.importc: "m_eventType".}: cint


proc constructwxDynamicEventTableEntry*(evType: cint; winid: cint; idLast: cint; 
                                        fn: ptr WxEventFunctor; 
                                        data: ptr WxObject): WxDynamicEventTableEntry {.
    cdecl, constructor, importcpp: "wxDynamicEventTableEntry(@)", header: wxh.}

type 
  WxEventTable* {.importcpp: "wxEventTable", header: wxh.} = object 
    baseTable* {.importc: "baseTable".}: ptr WxEventTable
    entries* {.importc: "entries".}: ptr WxEventTableEntry



type 
  WxEventHashTable* {.importcpp: "wxEventHashTable", header: wxh.} = object 
  

proc constructwxEventHashTable*(table: WxEventTable): WxEventHashTable {.cdecl, 
    constructor, importcpp: "wxEventHashTable(@)", header: wxh.}
proc destroywxEventHashTable*(this: var WxEventHashTable) {.cdecl, 
    importcpp: "#.~wxEventHashTable()", header: wxh.}
proc handleEvent*(this: var WxEventHashTable; event: var WxEvent; 
                  self: ptr WxEvtHandler): bool {.cdecl, 
    importcpp: "HandleEvent", header: wxh.}
proc clear*(this: var WxEventHashTable) {.cdecl, importcpp: "Clear", header: wxh.}

type 
  WxEvtHandler* {.importcpp: "wxEvtHandler", header: wxh.} = object of WxObject
  

proc constructwxEvtHandler*(): WxEvtHandler {.cdecl, constructor, 
    importcpp: "wxEvtHandler(@)", header: wxh.}
proc destroywxEvtHandler*(this: var WxEvtHandler) {.cdecl, 
    importcpp: "#.~wxEvtHandler()", header: wxh.}
proc getNextHandler*(this: WxEvtHandler): ptr WxEvtHandler {.noSideEffect, 
    cdecl, importcpp: "GetNextHandler", header: wxh.}
proc getPreviousHandler*(this: WxEvtHandler): ptr WxEvtHandler {.noSideEffect, 
    cdecl, importcpp: "GetPreviousHandler", header: wxh.}
proc setNextHandler*(this: var WxEvtHandler; handler: ptr WxEvtHandler) {.cdecl, 
    importcpp: "SetNextHandler", header: wxh.}
proc setPreviousHandler*(this: var WxEvtHandler; handler: ptr WxEvtHandler) {.
    cdecl, importcpp: "SetPreviousHandler", header: wxh.}
proc setEvtHandlerEnabled*(this: var WxEvtHandler; enabled: bool) {.cdecl, 
    importcpp: "SetEvtHandlerEnabled", header: wxh.}
proc getEvtHandlerEnabled*(this: WxEvtHandler): bool {.noSideEffect, cdecl, 
    importcpp: "GetEvtHandlerEnabled", header: wxh.}
proc unlink*(this: var WxEvtHandler) {.cdecl, importcpp: "Unlink", header: wxh.}
proc isUnlinked*(this: WxEvtHandler): bool {.noSideEffect, cdecl, 
    importcpp: "IsUnlinked", header: wxh.}
proc addFilter*(filter: ptr WxEventFilter) {.cdecl, 
    importcpp: "wxEvtHandler::AddFilter(@)", header: wxh.}
proc removeFilter*(filter: ptr WxEventFilter) {.cdecl, 
    importcpp: "wxEvtHandler::RemoveFilter(@)", header: wxh.}
proc processEvent*(this: var WxEvtHandler; event: var WxEvent): bool {.cdecl, 
    importcpp: "ProcessEvent", header: wxh.}
proc safelyProcessEvent*(this: var WxEvtHandler; event: var WxEvent): bool {.
    cdecl, importcpp: "SafelyProcessEvent", header: wxh.}
proc processEventLocally*(this: var WxEvtHandler; event: var WxEvent): bool {.
    cdecl, importcpp: "ProcessEventLocally", header: wxh.}
proc queueEvent*(this: var WxEvtHandler; event: ptr WxEvent) {.cdecl, 
    importcpp: "QueueEvent", header: wxh.}
proc addPendingEvent*(this: var WxEvtHandler; event: WxEvent) {.cdecl, 
    importcpp: "AddPendingEvent", header: wxh.}
proc processPendingEvents*(this: var WxEvtHandler) {.cdecl, 
    importcpp: "ProcessPendingEvents", header: wxh.}
proc deletePendingEvents*(this: var WxEvtHandler) {.cdecl, 
    importcpp: "DeletePendingEvents", header: wxh.}
proc processThreadEvent*(this: var WxEvtHandler; event: WxEvent): bool {.cdecl, 
    importcpp: "ProcessThreadEvent", header: wxh.}
proc callAfter*[T](this: var WxEvtHandler; `method`: pointer) {.cdecl, 
    importcpp: "CallAfter", header: wxh.}
proc callAfter*[T, T1, P1](this: var WxEvtHandler; `method`: pointer; x1: P1) {.
    cdecl, importcpp: "CallAfter", header: wxh.}
proc callAfter*[T, T1, T2, P1, P2](this: var WxEvtHandler; `method`: pointer; 
                                   x1: P1; x2: P2) {.cdecl, 
    importcpp: "CallAfter", header: wxh.}
proc callAfter*[T](this: var WxEvtHandler; fn: T) {.cdecl, 
    importcpp: "CallAfter", header: wxh.}
proc connect*(this: var WxEvtHandler; winid: cint; lastId: cint; 
              eventType: WxEventType; `func`: WxObjectEventFunction; 
              userData: ptr WxObject = nil; eventSink: ptr WxEvtHandler = nil) {.
    cdecl, importcpp: "Connect", header: wxh.}
proc connect*(this: var WxEvtHandler; winid: cint; eventType: WxEventType; 
              `func`: WxObjectEventFunction; userData: ptr WxObject = nil; 
              eventSink: ptr WxEvtHandler = nil) {.cdecl, importcpp: "Connect", 
    header: wxh.}
proc connect*(this: var WxEvtHandler; eventType: WxEventType; 
              `func`: WxObjectEventFunction; userData: ptr WxObject = nil; 
              eventSink: ptr WxEvtHandler = nil) {.cdecl, importcpp: "Connect", 
    header: wxh.}
proc disconnect*(this: var WxEvtHandler; winid: cint; lastId: cint; 
                 eventType: WxEventType; `func`: WxObjectEventFunction = nil; 
                 userData: ptr WxObject = nil; eventSink: ptr WxEvtHandler = nil): bool {.
    cdecl, importcpp: "Disconnect", header: wxh.}
proc disconnect*(this: var WxEvtHandler; winid = wxID_ANY; 
                 eventType: WxEventType = wxEVT_NULL; 
                 `func`: WxObjectEventFunction = nil; 
                 userData: ptr WxObject = nil; eventSink: ptr WxEvtHandler = nil): bool {.
    cdecl, importcpp: "Disconnect", header: wxh.}
proc disconnect*(this: var WxEvtHandler; eventType: WxEventType; 
                 `func`: WxObjectEventFunction; userData: ptr WxObject = nil; 
                 eventSink: ptr WxEvtHandler = nil): bool {.cdecl, 
    importcpp: "Disconnect", header: wxh.}
proc `bind`*[EventTag, EventArg](this: var WxEvtHandler; eventType: EventTag; 
                                 function: proc (a2: var EventArg) {.cdecl.}; 
                                 winid = wxID_ANY; lastId = wxID_ANY; 
                                 userData: ptr WxObject = nil) {.cdecl, 
    importcpp: "Bind", header: wxh.}
proc unbind*[EventTag, EventArg](this: var WxEvtHandler; eventType: EventTag; 
                                 function: proc (a2: var EventArg) {.cdecl.}; 
                                 winid = wxID_ANY; lastId = wxID_ANY; 
                                 userData: ptr WxObject = nil): bool {.cdecl, 
    importcpp: "Unbind", header: wxh.}
proc `bind`*[EventTag, Functor](this: var WxEvtHandler; eventType: EventTag; 
                                functor: Functor; winid = wxID_ANY; 
                                lastId = wxID_ANY; userData: ptr WxObject = nil) {.
    cdecl, importcpp: "Bind", header: wxh.}
proc unbind*[EventTag, Functor](this: var WxEvtHandler; eventType: EventTag; 
                                functor: Functor; winid = wxID_ANY; 
                                lastId = wxID_ANY; userData: ptr WxObject = nil): bool {.
    cdecl, importcpp: "Unbind", header: wxh.}
proc `bind`*[EventTag, Class, EventArg, EventHandler](this: var WxEvtHandler; 
    eventType: EventTag; `method`: pointer; handler: ptr EventHandler; 
    winid = wxID_ANY; lastId = wxID_ANY; userData: ptr WxObject = nil) {.cdecl, 
    importcpp: "Bind", header: wxh.}
proc unbind*[EventTag, Class, EventArg, EventHandler](this: var WxEvtHandler; 
    eventType: EventTag; `method`: pointer; handler: ptr EventHandler; 
    winid = wxID_ANY; lastId = wxID_ANY; userData: ptr WxObject = nil): bool {.
    cdecl, importcpp: "Unbind", header: wxh.}
proc getDynamicEventTable*(this: WxEvtHandler): ptr WxList {.noSideEffect, 
    cdecl, importcpp: "GetDynamicEventTable", header: wxh.}
proc setClientObject*(this: var WxEvtHandler; data: ptr WxClientData) {.cdecl, 
    importcpp: "SetClientObject", header: wxh.}
proc getClientObject*(this: WxEvtHandler): ptr WxClientData {.noSideEffect, 
    cdecl, importcpp: "GetClientObject", header: wxh.}
proc setClientData*(this: var WxEvtHandler; data: pointer) {.cdecl, 
    importcpp: "SetClientData", header: wxh.}
proc getClientData*(this: WxEvtHandler): pointer {.noSideEffect, cdecl, 
    importcpp: "GetClientData", header: wxh.}
proc processEventIfMatchesId*(tableEntry: WxEventTableEntryBase; 
                              handler: ptr WxEvtHandler; event: var WxEvent): bool {.
    cdecl, importcpp: "wxEvtHandler::ProcessEventIfMatchesId(@)", header: wxh.}
proc searchEventTable*(this: var WxEvtHandler; table: var WxEventTable; 
                       event: var WxEvent): bool {.cdecl, 
    importcpp: "SearchEventTable", header: wxh.}
proc searchDynamicEventTable*(this: var WxEvtHandler; event: var WxEvent): bool {.
    cdecl, importcpp: "SearchDynamicEventTable", header: wxh.}
proc clearEventHashTable*(this: var WxEvtHandler) {.cdecl, 
    importcpp: "ClearEventHashTable", header: wxh.}
proc onSinkDestroyed*(this: var WxEvtHandler; sink: ptr WxEvtHandler) {.cdecl, 
    importcpp: "OnSinkDestroyed", header: wxh.}

type 
  WxTrackerNode* {.importcpp: "wxTrackerNode", header: wxh, inheritable.} = object 
  
  WxEventConnectionRef* {.importcpp: "wxEventConnectionRef", header: wxh.} = object of WxTrackerNode
  

proc constructwxEventConnectionRef*(): WxEventConnectionRef {.cdecl, 
    constructor, importcpp: "wxEventConnectionRef(@)", header: wxh.}
proc constructwxEventConnectionRef*(src: ptr WxEvtHandler; 
                                    sink: ptr WxEvtHandler): WxEventConnectionRef {.
    cdecl, constructor, importcpp: "wxEventConnectionRef(@)", header: wxh.}
proc onObjectDestroy*(this: var WxEventConnectionRef) {.cdecl, 
    importcpp: "OnObjectDestroy", header: wxh.}
proc toEventConnection*(this: var WxEventConnectionRef): ptr WxEventConnectionRef {.
    cdecl, importcpp: "ToEventConnection", header: wxh.}
proc incRef*(this: var WxEventConnectionRef) {.cdecl, importcpp: "IncRef", 
    header: wxh.}
proc decRef*(this: var WxEventConnectionRef) {.cdecl, importcpp: "DecRef", 
    header: wxh.}

proc wxPostEvent*(dest: ptr WxEvtHandler; event: WxEvent) {.cdecl, 
    importcpp: "wxPostEvent(@)", header: wxh.}

proc wxQueueEvent*(dest: ptr WxEvtHandler; event: ptr WxEvent) {.cdecl, 
    importcpp: "wxQueueEvent(@)", header: wxh.}

proc wxFindFocusDescendant*(ancestor: ptr WxWindow): ptr WxWindow {.cdecl, 
    importcpp: "wxFindFocusDescendant(@)", header: wxh.}

var wxEVT_BUTTON* {.importcpp: "wxEVT_BUTTON", header: wxh.}: WxEventTypeTag[
    WxCommandEvent]

var wxEVT_CHECKBOX* {.importcpp: "wxEVT_CHECKBOX", header: wxh.}: WxEventTypeTag[
    WxCommandEvent]

var wxEVT_CHOICE* {.importcpp: "wxEVT_CHOICE", header: wxh.}: WxEventTypeTag[
    WxCommandEvent]

var wxEVT_LISTBOX* {.importcpp: "wxEVT_LISTBOX", header: wxh.}: WxEventTypeTag[
    WxCommandEvent]

var wxEVT_LISTBOX_DCLICK* {.importcpp: "wxEVT_LISTBOX_DCLICK", header: wxh.}: WxEventTypeTag[
    WxCommandEvent]

var wxEVT_CHECKLISTBOX* {.importcpp: "wxEVT_CHECKLISTBOX", header: wxh.}: WxEventTypeTag[
    WxCommandEvent]

var wxEVT_MENU* {.importcpp: "wxEVT_MENU", header: wxh.}: WxEventTypeTag[
    WxCommandEvent]

var wxEVT_SLIDER* {.importcpp: "wxEVT_SLIDER", header: wxh.}: WxEventTypeTag[
    WxCommandEvent]

var wxEVT_RADIOBOX* {.importcpp: "wxEVT_RADIOBOX", header: wxh.}: WxEventTypeTag[
    WxCommandEvent]

var wxEVT_RADIOBUTTON* {.importcpp: "wxEVT_RADIOBUTTON", header: wxh.}: WxEventTypeTag[
    WxCommandEvent]


var wxEVT_SCROLLBAR* {.importcpp: "wxEVT_SCROLLBAR", header: wxh.}: WxEventTypeTag[
    WxCommandEvent]

var wxEVT_VLBOX* {.importcpp: "wxEVT_VLBOX", header: wxh.}: WxEventTypeTag[
    WxCommandEvent]

var wxEVT_COMBOBOX* {.importcpp: "wxEVT_COMBOBOX", header: wxh.}: WxEventTypeTag[
    WxCommandEvent]

var wxEVT_TOOL_RCLICKED* {.importcpp: "wxEVT_TOOL_RCLICKED", header: wxh.}: WxEventTypeTag[
    WxCommandEvent]

var wxEVT_TOOL_DROPDOWN* {.importcpp: "wxEVT_TOOL_DROPDOWN", header: wxh.}: WxEventTypeTag[
    WxCommandEvent]

var wxEVT_TOOL_ENTER* {.importcpp: "wxEVT_TOOL_ENTER", header: wxh.}: WxEventTypeTag[
    WxCommandEvent]

var wxEVT_COMBOBOX_DROPDOWN* {.importcpp: "wxEVT_COMBOBOX_DROPDOWN", header: wxh.}: WxEventTypeTag[
    WxCommandEvent]

var wxEVT_COMBOBOX_CLOSEUP* {.importcpp: "wxEVT_COMBOBOX_CLOSEUP", header: wxh.}: WxEventTypeTag[
    WxCommandEvent]


var wxEVT_THREAD* {.importcpp: "wxEVT_THREAD", header: wxh.}: WxEventTypeTag[
    WxThreadEvent]

var wxEVT_ASYNC_METHOD_CALL* {.importcpp: "wxEVT_ASYNC_METHOD_CALL", header: wxh.}: WxEventTypeTag[
    WxAsyncMethodCallEvent]


var wxEVT_LEFT_DOWN* {.importcpp: "wxEVT_LEFT_DOWN", header: wxh.}: WxEventTypeTag[
    WxMouseEvent]

var wxEVT_LEFT_UP* {.importcpp: "wxEVT_LEFT_UP", header: wxh.}: WxEventTypeTag[
    WxMouseEvent]

var wxEVT_MIDDLE_DOWN* {.importcpp: "wxEVT_MIDDLE_DOWN", header: wxh.}: WxEventTypeTag[
    WxMouseEvent]

var wxEVT_MIDDLE_UP* {.importcpp: "wxEVT_MIDDLE_UP", header: wxh.}: WxEventTypeTag[
    WxMouseEvent]

var wxEVT_RIGHT_DOWN* {.importcpp: "wxEVT_RIGHT_DOWN", header: wxh.}: WxEventTypeTag[
    WxMouseEvent]

var wxEVT_RIGHT_UP* {.importcpp: "wxEVT_RIGHT_UP", header: wxh.}: WxEventTypeTag[
    WxMouseEvent]

var wxEVT_MOTION* {.importcpp: "wxEVT_MOTION", header: wxh.}: WxEventTypeTag[
    WxMouseEvent]

var wxEVT_ENTER_WINDOW* {.importcpp: "wxEVT_ENTER_WINDOW", header: wxh.}: WxEventTypeTag[
    WxMouseEvent]

var wxEVT_LEAVE_WINDOW* {.importcpp: "wxEVT_LEAVE_WINDOW", header: wxh.}: WxEventTypeTag[
    WxMouseEvent]

var wxEVT_LEFT_DCLICK* {.importcpp: "wxEVT_LEFT_DCLICK", header: wxh.}: WxEventTypeTag[
    WxMouseEvent]

var wxEVT_MIDDLE_DCLICK* {.importcpp: "wxEVT_MIDDLE_DCLICK", header: wxh.}: WxEventTypeTag[
    WxMouseEvent]

var wxEVT_RIGHT_DCLICK* {.importcpp: "wxEVT_RIGHT_DCLICK", header: wxh.}: WxEventTypeTag[
    WxMouseEvent]

var wxEVT_SET_FOCUS* {.importcpp: "wxEVT_SET_FOCUS", header: wxh.}: WxEventTypeTag[
    WxFocusEvent]

var wxEVT_KILL_FOCUS* {.importcpp: "wxEVT_KILL_FOCUS", header: wxh.}: WxEventTypeTag[
    WxFocusEvent]

var wxEVT_CHILD_FOCUS* {.importcpp: "wxEVT_CHILD_FOCUS", header: wxh.}: WxEventTypeTag[
    WxChildFocusEvent]

var wxEVT_MOUSEWHEEL* {.importcpp: "wxEVT_MOUSEWHEEL", header: wxh.}: WxEventTypeTag[
    WxMouseEvent]

var wxEVT_AUX1DOWN* {.importcpp: "wxEVT_AUX1_DOWN", header: wxh.}: WxEventTypeTag[
    WxMouseEvent]

var wxEVT_AUX1UP* {.importcpp: "wxEVT_AUX1_UP", header: wxh.}: WxEventTypeTag[
    WxMouseEvent]

var wxEVT_AUX1DCLICK* {.importcpp: "wxEVT_AUX1_DCLICK", header: wxh.}: WxEventTypeTag[
    WxMouseEvent]

var wxEVT_AUX2DOWN* {.importcpp: "wxEVT_AUX2_DOWN", header: wxh.}: WxEventTypeTag[
    WxMouseEvent]

var wxEVT_AUX2UP* {.importcpp: "wxEVT_AUX2_UP", header: wxh.}: WxEventTypeTag[
    WxMouseEvent]

var wxEVT_AUX2DCLICK* {.importcpp: "wxEVT_AUX2_DCLICK", header: wxh.}: WxEventTypeTag[
    WxMouseEvent]


var wxEVT_CHAR* {.importcpp: "wxEVT_CHAR", header: wxh.}: WxEventTypeTag[
    WxKeyEvent]

var wxEVT_CHAR_HOOK* {.importcpp: "wxEVT_CHAR_HOOK", header: wxh.}: WxEventTypeTag[
    WxKeyEvent]

var wxEVT_NAVIGATION_KEY* {.importcpp: "wxEVT_NAVIGATION_KEY", header: wxh.}: WxEventTypeTag[
    WxNavigationKeyEvent]

var wxEVT_KEY_DOWN* {.importcpp: "wxEVT_KEY_DOWN", header: wxh.}: WxEventTypeTag[
    WxKeyEvent]

var wxEVT_KEY_UP* {.importcpp: "wxEVT_KEY_UP", header: wxh.}: WxEventTypeTag[
    WxKeyEvent]

var wxEVT_HOTKEY* {.importcpp: "wxEVT_HOTKEY", header: wxh.}: WxEventTypeTag[
    WxKeyEvent]


var wxEVT_AFTER_CHAR* {.importcpp: "wxEVT_AFTER_CHAR", header: wxh.}: WxEventTypeTag[
    WxKeyEvent]


var wxEVT_SET_CURSOR* {.importcpp: "wxEVT_SET_CURSOR", header: wxh.}: WxEventTypeTag[
    WxSetCursorEvent]


var wxEVT_SCROLL_TOP* {.importcpp: "wxEVT_SCROLL_TOP", header: wxh.}: WxEventTypeTag[
    WxScrollEvent]

var wxEVT_SCROLL_BOTTOM* {.importcpp: "wxEVT_SCROLL_BOTTOM", header: wxh.}: WxEventTypeTag[
    WxScrollEvent]

var wxEVT_SCROLL_LINEUP* {.importcpp: "wxEVT_SCROLL_LINEUP", header: wxh.}: WxEventTypeTag[
    WxScrollEvent]

var wxEVT_SCROLL_LINEDOWN* {.importcpp: "wxEVT_SCROLL_LINEDOWN", header: wxh.}: WxEventTypeTag[
    WxScrollEvent]

var wxEVT_SCROLL_PAGEUP* {.importcpp: "wxEVT_SCROLL_PAGEUP", header: wxh.}: WxEventTypeTag[
    WxScrollEvent]

var wxEVT_SCROLL_PAGEDOWN* {.importcpp: "wxEVT_SCROLL_PAGEDOWN", header: wxh.}: WxEventTypeTag[
    WxScrollEvent]

var wxEVT_SCROLL_THUMBTRACK* {.importcpp: "wxEVT_SCROLL_THUMBTRACK", header: wxh.}: WxEventTypeTag[
    WxScrollEvent]

var wxEVT_SCROLL_THUMBRELEASE* {.importcpp: "wxEVT_SCROLL_THUMBRELEASE", 
                                 header: wxh.}: WxEventTypeTag[WxScrollEvent]

var wxEVT_SCROLL_CHANGED* {.importcpp: "wxEVT_SCROLL_CHANGED", header: wxh.}: WxEventTypeTag[
    WxScrollEvent]


var wxEVT_SPIN_UP* {.importcpp: "wxEVT_SPIN_UP", header: wxh.}: WxEventTypeTag[
    WxSpinEvent]

var wxEVT_SPIN_DOWN* {.importcpp: "wxEVT_SPIN_DOWN", header: wxh.}: WxEventTypeTag[
    WxSpinEvent]

var wxEVT_SPIN* {.importcpp: "wxEVT_SPIN", header: wxh.}: WxEventTypeTag[
    WxSpinEvent]


var wxEVT_SCROLLWIN_TOP* {.importcpp: "wxEVT_SCROLLWIN_TOP", header: wxh.}: WxEventTypeTag[
    WxScrollWinEvent]

var wxEVT_SCROLLWIN_BOTTOM* {.importcpp: "wxEVT_SCROLLWIN_BOTTOM", header: wxh.}: WxEventTypeTag[
    WxScrollWinEvent]

var wxEVT_SCROLLWIN_LINEUP* {.importcpp: "wxEVT_SCROLLWIN_LINEUP", header: wxh.}: WxEventTypeTag[
    WxScrollWinEvent]

var wxEVT_SCROLLWIN_LINEDOWN* {.importcpp: "wxEVT_SCROLLWIN_LINEDOWN", 
                                header: wxh.}: WxEventTypeTag[WxScrollWinEvent]

var wxEVT_SCROLLWIN_PAGEUP* {.importcpp: "wxEVT_SCROLLWIN_PAGEUP", header: wxh.}: WxEventTypeTag[
    WxScrollWinEvent]

var wxEVT_SCROLLWIN_PAGEDOWN* {.importcpp: "wxEVT_SCROLLWIN_PAGEDOWN", 
                                header: wxh.}: WxEventTypeTag[WxScrollWinEvent]

var wxEVT_SCROLLWIN_THUMBTRACK* {.importcpp: "wxEVT_SCROLLWIN_THUMBTRACK", 
                                  header: wxh.}: WxEventTypeTag[WxScrollWinEvent]

var wxEVT_SCROLLWIN_THUMBRELEASE* {.importcpp: "wxEVT_SCROLLWIN_THUMBRELEASE", 
                                    header: wxh.}: WxEventTypeTag[
    WxScrollWinEvent]


var wxEVT_SIZE* {.importcpp: "wxEVT_SIZE", header: wxh.}: WxEventTypeTag[
    WxSizeEvent]

var wxEVT_MOVE* {.importcpp: "wxEVT_MOVE", header: wxh.}: WxEventTypeTag[
    WxMoveEvent]

var wxEVT_CLOSE_WINDOW* {.importcpp: "wxEVT_CLOSE_WINDOW", header: wxh.}: WxEventTypeTag[
    WxCloseEvent]

var wxEVT_END_SESSION* {.importcpp: "wxEVT_END_SESSION", header: wxh.}: WxEventTypeTag[
    WxCloseEvent]

var wxEVT_QUERY_END_SESSION* {.importcpp: "wxEVT_QUERY_END_SESSION", header: wxh.}: WxEventTypeTag[
    WxCloseEvent]

var wxEVT_ACTIVATE_APP* {.importcpp: "wxEVT_ACTIVATE_APP", header: wxh.}: WxEventTypeTag[
    WxActivateEvent]

var wxEVT_ACTIVATE* {.importcpp: "wxEVT_ACTIVATE", header: wxh.}: WxEventTypeTag[
    WxActivateEvent]

var wxEVT_CREATE* {.importcpp: "wxEVT_CREATE", header: wxh.}: WxEventTypeTag[
    WxWindowCreateEvent]

var wxEVT_DESTROY* {.importcpp: "wxEVT_DESTROY", header: wxh.}: WxEventTypeTag[
    WxWindowDestroyEvent]

var wxEVT_SHOW* {.importcpp: "wxEVT_SHOW", header: wxh.}: WxEventTypeTag[
    WxShowEvent]

var wxEVT_ICONIZE* {.importcpp: "wxEVT_ICONIZE", header: wxh.}: WxEventTypeTag[
    WxIconizeEvent]

var wxEVT_MAXIMIZE* {.importcpp: "wxEVT_MAXIMIZE", header: wxh.}: WxEventTypeTag[
    WxMaximizeEvent]

var wxEVT_MOUSE_CAPTURE_CHANGED* {.importcpp: "wxEVT_MOUSE_CAPTURE_CHANGED", 
                                   header: wxh.}: WxEventTypeTag[
    WxMouseCaptureChangedEvent]

var wxEVT_MOUSE_CAPTURE_LOST* {.importcpp: "wxEVT_MOUSE_CAPTURE_LOST", 
                                header: wxh.}: WxEventTypeTag[
    WxMouseCaptureLostEvent]

var wxEVT_PAINT* {.importcpp: "wxEVT_PAINT", header: wxh.}: WxEventTypeTag[
    WxPaintEvent]

var wxEVT_ERASE_BACKGROUND* {.importcpp: "wxEVT_ERASE_BACKGROUND", header: wxh.}: WxEventTypeTag[
    WxEraseEvent]

var wxEVT_NC_PAINT* {.importcpp: "wxEVT_NC_PAINT", header: wxh.}: WxEventTypeTag[
    WxNcPaintEvent]

var wxEVT_MENU_OPEN* {.importcpp: "wxEVT_MENU_OPEN", header: wxh.}: WxEventTypeTag[
    WxMenuEvent]

var wxEVT_MENU_CLOSE* {.importcpp: "wxEVT_MENU_CLOSE", header: wxh.}: WxEventTypeTag[
    WxMenuEvent]

var wxEVT_MENU_HIGHLIGHT* {.importcpp: "wxEVT_MENU_HIGHLIGHT", header: wxh.}: WxEventTypeTag[
    WxMenuEvent]

var wxEVT_CONTEXT_MENU* {.importcpp: "wxEVT_CONTEXT_MENU", header: wxh.}: WxEventTypeTag[
    WxContextMenuEvent]

var wxEVT_SYS_COLOUR_CHANGED* {.importcpp: "wxEVT_SYS_COLOUR_CHANGED", 
                                header: wxh.}: WxEventTypeTag[
    WxSysColourChangedEvent]

var wxEVT_DISPLAY_CHANGED* {.importcpp: "wxEVT_DISPLAY_CHANGED", header: wxh.}: WxEventTypeTag[
    WxDisplayChangedEvent]

var wxEVT_QUERY_NEW_PALETTE* {.importcpp: "wxEVT_QUERY_NEW_PALETTE", header: wxh.}: WxEventTypeTag[
    WxQueryNewPaletteEvent]

var wxEVT_PALETTE_CHANGED* {.importcpp: "wxEVT_PALETTE_CHANGED", header: wxh.}: WxEventTypeTag[
    WxPaletteChangedEvent]

var wxEVT_JOY_BUTTON_DOWN* {.importcpp: "wxEVT_JOY_BUTTON_DOWN", header: wxh.}: WxEventTypeTag[
    WxJoystickEvent]

var wxEVT_JOY_BUTTON_UP* {.importcpp: "wxEVT_JOY_BUTTON_UP", header: wxh.}: WxEventTypeTag[
    WxJoystickEvent]

var wxEVT_JOY_MOVE* {.importcpp: "wxEVT_JOY_MOVE", header: wxh.}: WxEventTypeTag[
    WxJoystickEvent]

var wxEVT_JOY_ZMOVE* {.importcpp: "wxEVT_JOY_ZMOVE", header: wxh.}: WxEventTypeTag[
    WxJoystickEvent]

var wxEVT_DROP_FILES* {.importcpp: "wxEVT_DROP_FILES", header: wxh.}: WxEventTypeTag[
    WxDropFilesEvent]

var wxEVT_INIT_DIALOG* {.importcpp: "wxEVT_INIT_DIALOG", header: wxh.}: WxEventTypeTag[
    WxInitDialogEvent]

var wxEVT_IDLE* {.importcpp: "wxEVT_IDLE", header: wxh.}: WxEventTypeTag[
    WxIdleEvent]

var wxEVT_UPDATE_UI* {.importcpp: "wxEVT_UPDATE_UI", header: wxh.}: WxEventTypeTag[
    WxUpdateUIEvent]

var wxEVT_SIZING* {.importcpp: "wxEVT_SIZING", header: wxh.}: WxEventTypeTag[
    WxSizeEvent]

var wxEVT_MOVING* {.importcpp: "wxEVT_MOVING", header: wxh.}: WxEventTypeTag[
    WxMoveEvent]

var wxEVT_MOVE_START* {.importcpp: "wxEVT_MOVE_START", header: wxh.}: WxEventTypeTag[
    WxMoveEvent]

var wxEVT_MOVE_END* {.importcpp: "wxEVT_MOVE_END", header: wxh.}: WxEventTypeTag[
    WxMoveEvent]

var wxEVT_HIBERNATE* {.importcpp: "wxEVT_HIBERNATE", header: wxh.}: WxEventTypeTag[
    WxActivateEvent]


var wxEVT_TEXT_COPY* {.importcpp: "wxEVT_TEXT_COPY", header: wxh.}: WxEventTypeTag[
    WxClipboardTextEvent]

var wxEVT_TEXT_CUT* {.importcpp: "wxEVT_TEXT_CUT", header: wxh.}: WxEventTypeTag[
    WxClipboardTextEvent]

var wxEVT_TEXT_PASTE* {.importcpp: "wxEVT_TEXT_PASTE", header: wxh.}: WxEventTypeTag[
    WxClipboardTextEvent]


var wxEVT_COMMAND_LEFT_CLICK* {.importcpp: "wxEVT_COMMAND_LEFT_CLICK", 
                                header: wxh.}: WxEventTypeTag[WxCommandEvent]

var wxEVT_COMMAND_LEFT_DCLICK* {.importcpp: "wxEVT_COMMAND_LEFT_DCLICK", 
                                 header: wxh.}: WxEventTypeTag[WxCommandEvent]

var wxEVT_COMMAND_RIGHT_CLICK* {.importcpp: "wxEVT_COMMAND_RIGHT_CLICK", 
                                 header: wxh.}: WxEventTypeTag[WxCommandEvent]

var wxEVT_COMMAND_RIGHT_DCLICK* {.importcpp: "wxEVT_COMMAND_RIGHT_DCLICK", 
                                  header: wxh.}: WxEventTypeTag[WxCommandEvent]

var wxEVT_COMMAND_SET_FOCUS* {.importcpp: "wxEVT_COMMAND_SET_FOCUS", header: wxh.}: WxEventTypeTag[
    WxCommandEvent]

var wxEVT_COMMAND_KILL_FOCUS* {.importcpp: "wxEVT_COMMAND_KILL_FOCUS", 
                                header: wxh.}: WxEventTypeTag[WxCommandEvent]

var wxEVT_COMMAND_ENTER* {.importcpp: "wxEVT_COMMAND_ENTER", header: wxh.}: WxEventTypeTag[
    WxCommandEvent]


var wxEVT_HELP* {.importcpp: "wxEVT_HELP", header: wxh.}: WxEventTypeTag[
    WxHelpEvent]

var wxEVT_DETAILED_HELP* {.importcpp: "wxEVT_DETAILED_HELP", header: wxh.}: WxEventTypeTag[
    WxHelpEvent]


template wxEVT_TOOL*: untyped = wxEVT_MENU
var wxEVT_TEXT* {.importcpp: "wxEVT_TEXT", header: wxh.}: WxEventTypeTag[
    WxCommandEvent]
