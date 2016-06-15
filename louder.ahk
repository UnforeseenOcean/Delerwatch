#NoTrayIcon
; Volume fixer module
; This will prevent you from lowering th evolume or muting it under any circumstances
; But for the Master device only.
Loop{
SoundGet, master_mute, , mute
if master_mute = ON
{
	Send {Volume_Mute}
	SoundPlay, *16
}
Else
	SoundSet, 100
Sleep, 100
}
F12::ExitApp
