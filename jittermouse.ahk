;#NoTrayIcon
;Mouse shake module
; I know this is a lazy-ass implementation but this is WAAAAAAAAAAAAAAAAAY easier to debug for me
; I am a designer, not a programmer, you know...
; (C) 2016 OMFGThor / Goldstar, made for Danooct1 forums
Loop{
Random, pushX, 0, 256
Random, pushY, 0, 256
MouseMove, %pushX%, %pushY%, 1, R ;push right-bottom
MouseMove, -%pushX%, %pushY%, 1, R ;push left-bottom
MouseMove, %pushX%, -%pushY%, 1, R ;push right-top
MouseMove, -%pushX%, -%pushY%, 1, R ;push left-top
MouseMove, 0, %pushY%, 1, R ;push down
MouseMove, 0, -%pushY%, 1, R ;push up
MouseMove, %pushX%, 0, 1, R ;push right
MouseMove, -%pushX%, 0, 1, R ;push left
}
F12:: ExitApp