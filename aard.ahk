#NoTrayIcon
;Mouse push module
; I know this is a lazy-ass implementation but this is WAAAAAAAAAAAAAAAAAY easier to debug for me
; I am a designer, not a programmer, you know...
; (C) 2016 OMFGThor / Goldstar, made for Danooct1 forums
Loop{
start:
Random, selection, 0, 7
Random, randdelay, 3000, 13000
Random, pushX, 32, 1024
Random, pushY, 32, 1024
Sleep, randdelay
if selection = 0
{
MouseMove, %pushX%, %pushY%, 2, R ;push right-bottom
}
Else if selection = 1
{
MouseMove, -%pushX%, %pushY%, 2, R ;push left-bottom
}
Else if selection = 2
{
MouseMove, %pushX%, -%pushY%, 2, R ;push right-top
}
Else if selection = 3
{
MouseMove, -%pushX%, -%pushY%, 2, R ;push left-top
}
Else if selection = 4
{
MouseMove, 0, %pushY%, 2, R ;push down
}
Else if selection = 5
{
MouseMove, 0, -%pushY%, 2, R ;push up
}
Else if selection = 6
{
MouseMove, %pushX%, 0, 2, R ;push right
}
Else if selection = 7
{
MouseMove, -%pushX%, 0, 2, R ;push left
}
Else
{
goto, start
}
}