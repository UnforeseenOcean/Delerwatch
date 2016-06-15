#NoTrayIcon
;Mouse shake module
; I know this is a lazy-ass implementation but this is WAAAAAAAAAAAAAAAAAY easier to debug for me
; I am a designer, not a programmer, you know...
; (C) 2016 OMFGThor / Goldstar, made for Danooct1 forums
Loop{
Random, dizzymouseX, 0, 256
Random, dizzymouseY, 0, 256
MouseMove, %dizzymouseX%, %dizzymouseY%, 0 ,R
MouseMove, -%dizzymouseX%, %dizzymouseY%, 0 ,R
MouseMove, %dizzymouseX%, -%dizzymouseY%, 0 ,R
MouseMove, -%dizzymouseX%, -%dizzymouseY%, 0 ,R
}