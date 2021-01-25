# wxnim
Nim wrapper for wxWidgets. Most common widgets have been wrapped but there are still some missing.

Still in development, is shown to work fine, but needs more testing!

- [wxnim](#wxnim)
- [Installation](#installation)
  * [Installation on Linux](#installation-on-linux)
  * [Installation on Windows](#installation-on-windows)
  * [Installation on OSX](#installation-on-osx)
- [Examples](#examples)
  * [With GenUI macro](#with-genui-macro)
  * [Running work on background threads](#running-work-on-background-threads)
- [The GenUI macro](#the-genui-macro)
  * [The basics](#the-basics)
  * [Hierarchy](#hierarchy)
  * [Sizers](#sizers)
  * [Options and sizer options](#options-and-sizer-options)
  * [Referring to a widget](#referring-to-a-widget)
  * [Events and callbacks](#events-and-callbacks)
- [Generating the Nim code](#generating-the-nim-code)
- [Todo](#todo)


# Installation
wxWidgets works across all major platforms but the build process is slightly different. Below follows instructions on how to build for Linux, Windows and OSX. Since a simple nim.cfg file doesn't quite cut it here we use the file wxCompile.nim to decide which flags to pass so you would have to modify that to make changes. You don't need to install this specific module, you can go to the [examples](#examples) directly to see how to use this module.

## Installation on Linux

Download ``wxnim`` and grab the ``wxGtk`` package from your package manager. Make sure ``wx-config`` is in your PATH and executable. If you want to compile wxWidgets 3.0.2 yourself (for example in order to use X11 or link it statically into your application) you can use the ``-d:"wxWidgetsPath:<path to the folder wx-config is in>"`` flag.

## Installation on Windows

Download ``wxnim`` and point it to a compiled version of wxWidgets 3.0.2 with the ``-d:"wxWidgetsPath:<path to wxWidgets root folder>"`` flag or set up your compiler to know where these files are. 

Compile wxWidgets
via ``mingw32-make -f makefile.gcc SHARED=0 UNICODE=1 BUILD=release``.

More details can be found here:

https://wiki.wxwidgets.org/Compiling_wxWidgets_with_MinGW

## Installation on OSX

Make sure you have wxWindows installed. The easiest way to do so is through brew, with the command ``brew install wxmac``, if you have [homebrew](https://brew.sh) installed. The ``wx-config`` should be in your PATH. More details can be found at the [Linux installation](#installation-on-linux).

# Examples

## With GenUI macro

This module ships with a macro to easily create GUIs. To see it in use look at or compile the ``controlgallery`` example with::

    cd examples/genuimacro

    nim cpp -r controlgallery.nim

The output of the macro should look like these images from Linux, Windows and OSX respectively:

On Linux wxWidgets uses GTK+ as it's backend and looks will vary greatly depending on theme (this screenshot is taken with the Arc theme and M+ 2p font).

![Linux](/screenshots/linux.png)

On Windows wxWidgets uses Win32 Forms, so looks might change depending on Windows version, this is from Windows 10:

![Windows](/screenshots/windows.png)

On OSX it supports both, Light and Dark theme, if wxmac version is >=3.1.2.

![OSX](/screenshots/osx.png)


## Running work on background threads

Since wxWidgets requires the main thread to perform UI actions you would want to perform long running tasks in threads. To see an example of how you can use threads with wxWidgets look at the ``threads`` example found in ``examples/genuimacro``.

To compile the original examples::

    cd examples/purewx

    nim cpp -r example2.nim

# The GenUI macro

As previously mentioned wxnim now also has a macro to create user interfaces in a more readable and easy to use fashion than writing wxWidgets code manually (not hating on wxWidgets, all GUI code is horrible). This section is intended to explain how the macro works.

## The basics

The GenUI macro is designed to be a quite thin wrapper around wxWidgets code. This means that it won't do a lot of extra stuff but it allows you to easily use the wxWidgets documentation when designing and using your GUI. All object names are simply their wx counterpart but without the ``Wx`` prefix. Because of Nims case insensitivity you are free to write them any way you like, but since it adds the prefix ``constructWx`` your first character is also case-insensitive. This means that ``Panel`` and ``panel`` would be the same, which is not what Nim otherwise does (This might change in the future, so it's best to use a capital letter anyways). Notable differences from wxWidgets are:

* The ``parent`` parameter is set based on the hierarchy of elements
* The ``id`` parameter defaults to ``wxID_ANY``
* If the only child of an element is a string it is treated as the ``label`` parameter of that object
* When adding elements to a sizer (more on that later) the default are set to ``border = 5`` and ``flag = wxExpand or wxAll``
* StaticBoxSizers behave like any other sizer

## Hierarchy

Instead of naming all your objects and passing them around for creating your GUIs layout the GenUI macro uses the hierarchy of your code instead. In this example the Button and Checkbox are children of the StaticBox which again is a child of the Panel (Note that this example lacks sizers, more on that later).

``` Nim
Panel:
  StaticBox(label = "Basic controls"):
    Button: "Click me!"
    CheckBox: "Check me!"
```

As explained above a single child of type ``string`` will be treated as the ``label`` option instead. So the button could also be written as ``Button(label = "Click me!")``.

## Sizers

To avoid having all your widgets on top of each others you need to use sizers. These define the layout of siblings in an object. We can expand the above example with some sizers:

``` Nim
Panel | Boxsizer(orient = wxHorizontal):
  StaticBox(label = "Basic controls") | StaticBoxSizer(orient = wxVertical):
    Button: "Click me!"
    CheckBox: "Check me!"
```

Sizers use the ``|`` operator after a widget to set themselves for that widget, all children added to the widget will be added to the sizer. Boxsizers are your most basic sizer and can define a horizontal or vertical layout. For static boxes you need to use a ``StaticBoxSizer``.

## Options and sizer options

The above examples show how you can pass options to the creation of an object by using regular parenthesis. This applies to both regular objects and sizers. When a widget is added to a sizer you may specify options to the ``add`` function. This allows you to change how the object is packed into the sizer, such as borders and alignment. To pass options to the add function use square brackets ``[]`` like this:

``` Nim
Panel | Boxsizer(orient = wxHorizontal):
  StaticBox(label = "Basic controls")[proportion = 1] | StaticBoxSizer(orient = wxVertical):
    Button: "Click me!"
    CheckBox[flag = wxAlign_right or wxAll]: "Check me!"
```
Note that even if the ``flag`` option defaults to ``wxExpand or wxAll`` we have to specify ``wxAll`` if we want it when we override it.

## Referring to a widget

Since we no longer need to assign variables to all our widgets you might wonder how you're supposed to refer to a widget after it's creation. The ``wxFrame`` representing a window, will for example need to call its ``show`` function to show itself and its children. To assign a variable use ``%`` like this:

``` Nim
mainFrame % Frame(title = "Window title text"):
  Panel | Boxsizer(orient = wxHorizontal):
    StaticBox(label = "Basic controls")[proportion = 1] | StaticBoxSizer(orient = wxVertical):
      Button: "Click me!"
      CheckBox[flag = wxAlign_right or wxAll]: "Check me!"
```

This will create a new variable if one doesn't exist with that name in the current scope, or try to assign to one if it does exist (note that this might change in the future since it hides spelling mistakes in the variable name). The variable in this example will be of type ``ptr WxFrame``. Currently there is no way to create a variable for a sizer.

## Events and callbacks

Many widgets will emit events which you can use to call a function. To attach a callback to a widget use an arrow ``->`` like this:

``` Nim
mainFrame % Frame(title = "Window title text"):
  Panel | Boxsizer(orient = wxHorizontal):
    StaticBox(label = "Basic controls")[proportion = 1] | StaticBoxSizer(orient = wxVertical):
      Button -> (wxEVT_BUTTON, buttonClicked): "Click me!"
      CheckBox[flag = wxAlign_right or wxAll]: "Check me!"
```

This will bind the ``wxEVT_BUTTON`` event to the procedure ``buttonClicked``. The procedure is defined like this:

``` Nim
proc buttonClicked(e: var WxButtonEvent) {.cdecl.}
```

Currently there is no way to bind multiple callbacks without using a variable and the wx ``bind`` function, this will be added later.

# Generating the Nim code

This wrapper was originally generated by c2nim. To regenerate the Nim code, simply
run ``nim c -r scripts/convert``. However since the files have later been modified this would break the library. Only do this if you are developing wxWidgets and need to generate the files again.


# Todo

- Make event handling support Nim's closures.
- Make the interface even more Nim-like

