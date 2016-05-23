;F12:: Exit
DllCall("dwmapi\DwmEnableComposition", "uint", 0) ;This disables Windows Aero
Loop
{
Send {Alt down} ;Hold Alt key
Random, spamkey , 1, 12
loop, %spamkey% ;Presses Tab for a random amount between 1 and 12
{
Send {Tab}
}
Send {Alt up} ;Release Alt key
Random, randx, 1, %A_ScreenWidth% ;Move horizontally in current resolution
Random, randy, 1, %A_ScreenHeight% ;Move vertically in current resolution
WinMove, A, , randx, randy
Sleep 100 ;Little bit of delay to slow things to down to safe point where it won't crash the system
}
