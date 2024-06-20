# additional compiler and linker instructions to include wxWidgets binaries in Nim
# Fredrik Høisæther Rasch (@couven92), 2017

import ospaths

when defined(wxWidgetsPath):
  const wxWidgetsPath {.strdefine.}: string = ""
  when len(wxWidgetsPath) < 1:
    {.error: "wxWidgetsPath must not be an empty string when defined".}
else:
  when defined(windows):
    {.warning: "Compiling without wxWidgetsPath assumes that your compiler knows where to find the wxWidgets files".}
  else:
    {.warning: "Compiling without wxWidgetsPath assumes wx-config is in your path".}

when defined(vcc):
  when defined(windows):
    {.passC: "/D__WXMSW__".}
    # Include basic Windows libraries required by wxWidgets. VCC does dead code emilination of these include libraries if something is not required during linking.
    {.passL: "kernel32.lib user32.lib gdi32.lib comdlg32.lib winspool.lib winmm.lib shell32.lib comctl32.lib ole32.lib oleaut32.lib uuid.lib rpcrt4.lib advapi32.lib wsock32.lib".}

  when defined(wxWidgetsPath):
    {.passC: "/I\"" & (wxWidgetsPath / "include") & "\"" .}
    when defined(i386):
      const wxWidgetsLibPath: string = wxWidgetsPath / "lib" / "vc_lib"
    elif defined(amd64):
      const wxWidgetsLibPath: string = wxWidgetsPath / "lib" / "vc_x64_lib"
    when defined(windows):
      {.passC: "/I\"" & (wxWidgetsLibPath / "mswu") & "\"".}
      {.passL: "\"" & (wxWidgetsLibPath / "wxmsw30u_adv.lib") & "\"".}
      {.passL: "\"" & (wxWidgetsLibPath / "wxmsw30u_aui.lib") & "\"".}
      {.passL: "\"" & (wxWidgetsLibPath / "wxmsw30u_core.lib") & "\"".}
      {.passL: "\"" & (wxWidgetsLibPath / "wxmsw30u_gl.lib") & "\"".}
      {.passL: "\"" & (wxWidgetsLibPath / "wxmsw30u_html.lib") & "\"".}
      {.passL: "\"" & (wxWidgetsLibPath / "wxmsw30u_media.lib") & "\"".}
      {.passL: "\"" & (wxWidgetsLibPath / "wxmsw30u_propgrid.lib") & "\"".}
      {.passL: "\"" & (wxWidgetsLibPath / "wxmsw30u_qa.lib") & "\"".}
      {.passL: "\"" & (wxWidgetsLibPath / "wxmsw30u_ribbon.lib") & "\"".}
      {.passL: "\"" & (wxWidgetsLibPath / "wxmsw30u_richtext.lib") & "\"".}
      {.passL: "\"" & (wxWidgetsLibPath / "wxmsw30u_stc.lib") & "\"".}
      {.passL: "\"" & (wxWidgetsLibPath / "wxmsw30u_webview.lib") & "\"".}
      {.passL: "\"" & (wxWidgetsLibPath / "wxmsw30u_xrc.lib") & "\"".}
    {.passL: "\"" & (wxWidgetsLibPath / "wxbase30u.lib") & "\"".}
    {.passL: "\"" & (wxWidgetsLibPath / "wxbase30u_net.lib") & "\"".}
    {.passL: "\"" & (wxWidgetsLibPath / "wxbase30u_xml.lib") & "\"".}
    {.passL: "\"" & (wxWidgetsLibPath / "wxexpat.lib") & "\"".}
    {.passL: "\"" & (wxWidgetsLibPath / "wxjpeg.lib") & "\"".}
    {.passL: "\"" & (wxWidgetsLibPath / "wxpng.lib") & "\"".}
    {.passL: "\"" & (wxWidgetsLibPath / "wxregexu.lib") & "\"".}
    {.passL: "\"" & (wxWidgetsLibPath / "wxscintilla.lib") & "\"".}
    {.passL: "\"" & (wxWidgetsLibPath / "wxtiff.lib") & "\"".}
    {.passL: "\"" & (wxWidgetsLibPath / "wxzlib.lib") & "\"".}
  else: # not defined(wxWidgetsPath)
    # Assume wxWidgets lib library included in linker library directory path
    {.passL: "wxmsw30u_adv.lib wxmsw30u_aui.lib wxmsw30u_core.lib wxmsw30u_gl.lib wxmsw30u_html.lib wxmsw30u_media.lib wxmsw30u_propgrid.lib wxmsw30u_qa.lib wxmsw30u_ribbon.lib wxmsw30u_richtext.lib wxmsw30u_stc.lib wxmsw30u_webview.lib wxmsw30u_xrc.lib".}
    {.passL: "wxbase30u.lib wxbase30u_net.lib wxbase30u_xml.lib wxexpat.lib wxjpeg.lib wxpng.lib wxregexu.lib wxscintilla.lib wxtiff.lib wxzlib.lib".}

elif defined(gcc) or defined(clang):
  when defined(windows):
    {.passC: "-D__WXMSW__".}
    # Include basic Windows libraries required by wxWidgets. VCC does dead code emilination of these include libraries if something is not required during linking.
    {.passL: "-lkernel32 -luser32 -lgdi32 -lcomdlg32 -lwinspool -lwinmm -lshell32 -lcomctl32 -lole32 -loleaut32 -luuid -lrpcrt4 -ladvapi32 -lwsock32".}
    when defined(wxWidgetsPath):
      {.passC: "-I\"" & (wxWidgetsPath / "include") & "\"".}
      const wxWidgetsLibPath: string = wxWidgetsPath / "lib" / "gcc_lib"
      when defined(windows):
        {.passC: "/I\"" & (wxWidgetsLibPath / "mswu") & "\"".}
        {.passL: "\"" & (wxWidgetsLibPath / "wxmsw30u_adv.a") & "\"".}
        {.passL: "\"" & (wxWidgetsLibPath / "wxmsw30u_aui.a") & "\"".}
        {.passL: "\"" & (wxWidgetsLibPath / "wxmsw30u_core.a") & "\"".}
        {.passL: "\"" & (wxWidgetsLibPath / "wxmsw30u_gl.a") & "\"".}
        {.passL: "\"" & (wxWidgetsLibPath / "wxmsw30u_html.a") & "\"".}
        {.passL: "\"" & (wxWidgetsLibPath / "wxmsw30u_media.a") & "\"".}
        {.passL: "\"" & (wxWidgetsLibPath / "wxmsw30u_propgrid.a") & "\"".}
        {.passL: "\"" & (wxWidgetsLibPath / "wxmsw30u_qa.a") & "\"".}
        {.passL: "\"" & (wxWidgetsLibPath / "wxmsw30u_ribbon.a") & "\"".}
        {.passL: "\"" & (wxWidgetsLibPath / "wxmsw30u_richtext.a") & "\"".}
        {.passL: "\"" & (wxWidgetsLibPath / "wxmsw30u_stc.a") & "\"".}
        {.passL: "\"" & (wxWidgetsLibPath / "wxmsw30u_webview.a") & "\"".}
        {.passL: "\"" & (wxWidgetsLibPath / "wxmsw30u_xrc.a") & "\"".}
      {.passL: "\"" & (wxWidgetsLibPath / "wxbase30u.a") & "\"".}
      {.passL: "\"" & (wxWidgetsLibPath / "wxbase30u_net.a") & "\"".}
      {.passL: "\"" & (wxWidgetsLibPath / "wxbase30u_xml.a") & "\"".}
      {.passL: "\"" & (wxWidgetsLibPath / "wxexpat.a") & "\"".}
      {.passL: "\"" & (wxWidgetsLibPath / "wxjpeg.a") & "\"".}
      {.passL: "\"" & (wxWidgetsLibPath / "wxpng.a") & "\"".}
      {.passL: "\"" & (wxWidgetsLibPath / "wxregexu.a") & "\"".}
      {.passL: "\"" & (wxWidgetsLibPath / "wxscintilla.a") & "\"".}
      {.passL: "\"" & (wxWidgetsLibPath / "wxtiff.a") & "\"".}
      {.passL: "\"" & (wxWidgetsLibPath / "wxzlib.a") & "\"".}
    else: # not defined(wxWidgetsPath)
      # Assume wxWidgets lib library included in linker library directory path
      {.passL: "wxmsw30u_adv.a wxmsw30u_aui.a wxmsw30u_core.a wxmsw30u_gl.a wxmsw30u_html.a wxmsw30u_media.a wxmsw30u_propgrid.a wxmsw30u_qa.a wxmsw30u_ribbon.a wxmsw30u_richtext.a wxmsw30u_stc.a wxmsw30u_webview.a wxmsw30u_xrc.a".}
      {.passL: "wxbase30u.a wxbase30u_net.a wxbase30u_xml.a wxexpat.a wxjpeg.a wxpng.a wxregexu.a wxscintilla.a wxtiff.a wxzlib.a".}
  else: # not defined(windows)
    const wxConfig =
      when defined(wxWidgetsPath):
        wxWidgetsPath / "wx-config"
      else:
        "wx-config"
    const wxConfigOptions {.strdefine.}: string = ""
    {.passC: "`" & wxConfig & " " & wxConfigOptions & " --cppflags`".}
    {.passL: "`" & wxConfig & " " & wxConfigOptions & " --libs all`".}
