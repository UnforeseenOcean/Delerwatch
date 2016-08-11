#NoTrayIcon
#Persistent

;Mouse shake module
; I know this is a lazy-ass implementation but this is WAAAAAAAAAAAAAAAAAY easier to debug for me
; I am a designer, not a programmer, you know...
; (C) 2016 OMFGThor / Goldstar, made for Danooct1 forums
; Thanks NO_BOOT_DEVICE for the help
Loop{
shakey:
Random, shakedir, 0, 7
Random, pushX, 2, 16
Random, pushY, 2, 16
if shakedir = 0
{
MouseMove, %pushX%, %pushY%, 1, R ;push right-bottom
}
Else if shakedir = 1
{
MouseMove, -%pushX%, %pushY%, 1, R ;push left-bottom
}
Else if shakedir = 2
{
MouseMove, %pushX%, -%pushY%, 1, R ;push right-top
}
Else if shakedir = 3
{
MouseMove, -%pushX%, -%pushY%, 1, R ;push left-top
}
Else if shakedir = 4
{
MouseMove, 0, %pushY%, 1, R ;push down
}
Else if shakedir = 5
{
MouseMove, 0, -%pushY%, 1, R ;push up
}
Else if shakedir = 6
{
MouseMove, %pushX%, 0, 1, R ;push right
}
Else if shakedir = 7
{
MouseMove, -%pushX%, 0, 1, R ;push left
}
Else
{
goto, shakey
}
}
F12:: ExitApp