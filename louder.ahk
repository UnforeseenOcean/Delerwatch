#NoTrayIcon
;Volume fixer module
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