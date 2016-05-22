;F12:: Exit
Loop
{
Send !{Tab}
Random, randx, 1, %A_ScreenWidth%
Random, randy, 1, %A_ScreenHeight%
; WinGetPos X, Y, , , A
; X += randx
; Y += randy
WinMove, A, , randx, randy
; WinMove, A, overwatch, randx, randy
Sleep 1000
}
