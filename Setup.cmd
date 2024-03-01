@echo off&pushd "%~dp0"
regedit /s "%CD%\WinRAR.reg"
reg.exe add "HKCR\WinRAR\DefaultIcon" /ve /d "\"%CD%\WinRAR.exe\",0" /f
reg.exe add "HKCR\WinRAR\shell\open\command" /ve /d "\"%CD%\WinRAR.exe\" \"%%1\"" /f
reg.exe add "HKCR\WinRAR.REV\DefaultIcon" /ve /d "\"%CD%\WinRAR.exe\",1" /f
reg.exe add "HKCR\WinRAR.REV\shell\open\command" /ve /d "\"%CD%\WinRAR.exe\" \"%%1\"" /f
reg.exe add "HKCR\WinRAR.ZIP\DefaultIcon" /ve /d "\"%CD%\WinRAR.exe\",0" /f
reg.exe add "HKCR\WinRAR.ZIP\shell\open\command" /ve /d "\"%CD%\WinRAR.exe\" \"%%1\"" /f
start "" winrar.exe
exit /b 0
