#NoTrayIcon
#WinActivateForce
#Persistent
;(C) 2016 OMFGThor / Goldstar, made exclusively for Danooct1 forums
Loop
{
Random, randx, 0, %A_ScreenWidth%
Random, randy, 0, %A_ScreenHeight%
WinMove, A, , randx, randy
}
F12::ExitApp