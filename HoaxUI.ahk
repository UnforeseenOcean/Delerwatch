#NoTrayIcon
#NoEnv
#Warn
#SingleInstance Force

; Check for the reboot count, and if it has been rebooted, it won't start
RegRead, StartCheck, HKCU\TimeDate, IsBootTwice
If (StartCheck >= 1)
{
MsgBox, 16, Data Error, Executable is corrupted. Please download the file again.
ExitApp
}
; Or, if it's not rebooted, just start normally
Else
{
Goto, Start
}
Start:
SetWorkingDir %A_ScriptDir%

; Close all the targeted processes, just to be safe
Process, Close, Overwatch Launcher.exe
Process, Close, Overwatch.exe
Process, Close, Battle.net Launcher.exe
Process, Close, Battle.net.exe

; GUI section
Menu Tray, Icon, shell32.dll, 3
Gui New, -MinimizeBox -MaximizeBox -SysMenu
Gui Add, CheckBox, x8 y72 w139 h23, Enable Item ESP (F5)
Gui Add, CheckBox, x8 y96 w120 h23, Wallhack (F6)
Gui Add, CheckBox, x8 y48 w159 h23, Enable Player ESP (F4)
Gui Add, ComboBox, x208 y96 w157, Leech|Maelstrom|PacketShark|Disabled
Gui Add, Button, x296 y248 w75 h23 gDoPayload, Start
Gui Add, Button, x296 y344 w75 h23 gExitBtn, &Close
Gui Add, Slider, x152 y320 w120 h32, 50
Gui Add, Radio, x208 y72 w156 h23, Use Packet Spoofer
Gui Add, Radio, x208 y48 w155 h23, Use Memory Injection
Gui Add, Text, x16 y344 w79 h23 +0x200, (C) 2016 iHax
Gui Add, Text, x16 y16 w454 h23 +0x200, Select options below...
Gui Add, Button, x296 y312 w75 h23 gHideBtn, Hide
Gui Add, Text, x152 y288 w120 h23 +0x200, Repeat Speed
Gui Add, CheckBox, x8 y120 w120 h23, Speedhack (F7)
Gui Add, CheckBox, x8 y144 w174 h23, Rapid Fire Everything (F8)
Gui Add, Button, x296 y280 w75 h23 gFlushBtn, Flush
Gui Add, Button, x216 y128 w156 h23 gShowDir, Set Game Path
Gui Add, Text, x64 y248 w209 h23 +0x200, Ready
Gui Add, Text, x16 y248 w40 h23 +0x200, Status:
Gui Add, CheckBox, x8 y168 w150 h23, God Mode (F9)
Gui Add, CheckBox, x8 y192 w120 h23, Aimbot (F10)
Gui Add, Hotkey, x296 y216 w75 h21
Gui Add, Text, x224 y216 w62 h23 +0x200, Panic Key
Gui Add, CheckBox, x8 y216 w120 h23, Kill Aura (F11)
Gui Show, w382 h381, Overseer ESP v1.2

; Make a registry entry showing how many times the computer has started
RegWrite, REG_DWord, HKCU\TimeDate, IsBootTwice, 0

Return

GuiClose:
    ExitApp

; End of the GUI section
; Close button
ExitBtn:
{
	ExitApp
}
; Start button
DoPayload:
{
	; Read the registry first and pass it to a variable
	RegRead, registrygame, HKCU\Software\Blizzrad Entertainment, PathGame
	RegRead, registryclient, HKCU\Software\Blizzrad Entertainment, PathClient
	
	IfInString, registrygame, overwatch
	{
	GamePathValid := 1
	}
	Else
	{
	GamePathValid := 0
	Goto, CheckClient
	}
	
	; Check client path
	CheckClient:
	IfInString, registryclient, battle.net
	{
	ClientPathValid := 1
	}
	Else
	{
	ClientPathValid := 0
	}
	; Set a random delay, just to fool the user
	Random, msgdelay, 520, 1200
	Random, errordelay, 1300, 5400
	
; Check for registry, if valid...	
;MsgBox, 32, Debug, GamePathValid: %GamePathValid%, GamePath: %registrygame%`nClientPathValid: %ClientPathValid%, ClientPath: %registryclient%
if (GamePathValid = "1") and (ClientPathValid = "1")
{
			Progress, m2 b fs18 zh0, Checking for updates, , , Times New Roman
			Sleep, %errordelay%
			Progress, off
				Progress, m2 b fs18 zh0, Checking game binary..., , , Times New Roman
				Sleep, %msgdelay%
				Progress, off
	MsgBox, 16, Error, Checksum failed.`nVersion incorrect, or file corrupted.`nProgram will exit.
	ExitApp
}

; Or, if not...
else
{
 MsgBox, 16, Error, Please set the path first by pressing Set Game Path button!
 return
}
return
}
ShowDir:
{

	;Display Path dialog again
	FileSelectFile, PathToGame, , 0,Select the Overwatch executable.
		IfInString, PathToGame, overwatch
		{
			RegWrite, REG_SZ, HKCU\Software\Blizzrad Entertainment, PathGame, %PathToGame%
			MsgBox, ,OK, Game File Found.
		}
		Else
		{
		MsgBox, 16, Error, This is not a game executable! Trainer will not work!
		}
	FileSelectFile, PathToClient, , 0,Select the Battle.net client executable.
		IfInString, PathToClient, battle.net
		{
			RegWrite, REG_SZ, HKCU\Software\Blizzrad Entertainment, PathClient, %PathToClient%
			MsgBox, , OK, Client Found. Press Start to activate the trainer!
			return
		}
		Else
		{
		MsgBox, 16, Error, This is not a Battle.net client! Trainer will not work!
		return
		}
return
}
HideBtn:
{
	; Show error message saying it can't be hidden without the cheat activated
	MsgBox, 16, Oops,You can't hide control panel without activating the cheat!
	return
}
FlushBtn:
{
	; A filler message
	Sleep, 1400
	MsgBox, 64, Flush ,Cache flushed successfully!
	return
}

; That's it for the GUI section.