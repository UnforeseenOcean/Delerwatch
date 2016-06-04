#NoTrayIcon
Loop{
Random, dizzymouseX, 0, 100
Random, dizzymouseY, 0, 100
MouseMove, %dizzymouseX%, %dizzymouseY%, 1 ,R
MouseMove, -%dizzymouseX%, %dizzymouseY%, 1 ,R
MouseMove, %dizzymouseX%, -%dizzymouseY%, 1 ,R
MouseMove, -%dizzymouseX%, -%dizzymouseY%, 1 ,R
}