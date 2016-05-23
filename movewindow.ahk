;F12:: Exit
; SplashTextOn, 600, 20, IMPORTANT SHIT, Overwatch isn't bad but if you aren't gonna buy me one, you can go away!
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
; SplashTextOff
; MsgBox, 4, Fucking question, Will you buy me Overwatch if you have a chance to do so?, 60
; IfMsgBox Yes
; MsgBox, 0, KEEP THE PROMISE!, Thanks!! If you lie, I will get you!
; Else 
; MsgBox, 0, I'm just too broke m8, Fuck you then.
