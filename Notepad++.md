# Notepad++

Notepad++ Tips
 
 
 
### :one: Replace Notepad Using Debugger Registry Value

Notepad++ will be open whenever double-click a text file, and whenever notepad.exe is executed.

Run cmd/powershell as as administrator:
```sh
> reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\notepad.exe" /v "Debugger" /t REG_SZ /d "\"%ProgramFiles(x86)%\Notepad++\notepad++.exe\" -notepadStyleCmdline -z" /f
```

To undo (reverse) the replacement, use the following command:
```sh
> reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\notepad.exe" /v "Debugger" /f
```

More [at](https://www.winhelponline.com/blog/replace-notepad-text-editor-notepad-plus-association)!
 
 
 
### :two: Get ligatures to work in Notepad++

1. Install ***LuaScript*** via the ***Plugin Manager***.
2. Edit the LuaScript startup file in ***Plugins*** > ***LuaScript*** > ***Edit Startup Script***
3. Add the following code:
```sh
editor1.Technology = SC_TECHNOLOGY_DIRECTWRITE
editor2.Technology = SC_TECHNOLOGY_DIRECTWRITE
```

Detail [at](https://stegriff.co.uk/upblog/enable-ligatures-and-emoji-in-notepad-plus-plus)!
