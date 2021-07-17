References:
- https://dart.dev/guides/language/language-tour
- Install Code Runner Extension to run dart file directly in Editor: https://marketplace.visualstudio.com/items?itemName=formulahendry.code-runner
    + If the error "/bin/sh: dart: command not found" then try one of the options below:
        . append "export PATH=$PATH:~/development/flutter/bin" into ~/.bash_profile file
        . open settings.json file from Extensions Settings of Code Runner and update dart in the part of code-runner.executorMap to <the part to dart>
- Open the Dart code file in Text Editor, then use shortcut Ctrl+Alt+N, or right click the Text Editor and then click Run Code in context menu, the Dart console application will run and the output will be shown in the Output Window.  
- Enable asserts: open settings.json file from Extensions Settings of Code Runner and in the part of code-runner.executorMap:
    + replace "dart": "dart"
    + by "dart": "dart --enable-asserts"

Tutorials for Dart language:
1. hello_world.dart
2. functions.dart