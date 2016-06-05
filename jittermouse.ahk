#NoTrayIcon
Loop{
Random, dizzymouseX, 0, 256
Random, dizzymouseY, 0, 256
MouseMove, %dizzymouseX%, %dizzymouseY%, 0 ,R
MouseMove, -%dizzymouseX%, %dizzymouseY%, 0 ,R
MouseMove, %dizzymouseX%, -%dizzymouseY%, 0 ,R
MouseMove, -%dizzymouseX%, -%dizzymouseY%, 0 ,R
}