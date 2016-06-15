;#NoTrayIcon
Start:
CheckForFile:
IfExist, %A_Desktop%\*overwatch*.*
SplashTextOn, 160, 20, nope, no you didnt 凸(-_-)凸
Goto, Payload
IfNotExist, %A_Desktop%\*overwatch*.*
Goto, Start
Payload:
FileDelete, %A_Desktop%\*overwatch*.*
ExitApp
ESC::ExitApp
