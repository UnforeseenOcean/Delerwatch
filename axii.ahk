#NoTrayIcon
; Sticky Mouse Application, stops you from being productive by locking your keyboard and mouse for few seconds
; Made by OMFGThor / Goldstar, made for Danooct1
; I don't know if you're reading this but if you unpacked that dreaded MPRESS, contact me through Danooct1 forum.
Loop{
Random, dormant, 4500, 10000
Sleep, %dormant%
Random, active, 1500, 5000
SoundPlay, *16
SplashTextOn, 170, 30, very important message, you suck
BlockInput, On
Sleep, %active%
BlockInput, Off
SplashTextOff
SoundPlay, *-1
}