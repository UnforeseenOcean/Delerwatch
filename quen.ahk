;#NoTrayIcon
;Process Blocker module, revision 2
; 
Loop{
start:
IfWinExist, ahk_exe taskmgr.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, HAHA NOPE, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe cmd.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, NOPE MATE!, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe regedit.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, NOT SO FAST!, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe procexp.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, NOPE!, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe procmon.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, NO CHEATING!, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe dbgview.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, NOPE! NOT GONNA WORK!, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe iexplore.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, USE FIREFOX!, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe chrome.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, CHROME IS HARMFUL TO YOUR HEALTH!, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe opera.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, SOAP OPERA SUCKS!, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe ollydbg.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, O RLY?, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe nw.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, YOU DIDN'T SAY THE MAGIC WORD!, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe swingbrowser.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, CHROME BROWSER RIPOFF! KOREAN QUALITY!!, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe arora.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, NOPE! WON'T DO THAT!, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe greenbrowser.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, NO INTERNET FOR YOU!, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe k-meleon.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, HAHA NOPE!!, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe links.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, TEXT BASED ASS!, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe lynx.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, SOME SORT OF CAT!, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe luna.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, LUNATIC!, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe maxthon.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, NOT SO CLOUDY!, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe origin.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, WHAT A LOSER!, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe battlenet.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, THIS ACTION IS DISABLED!, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe seamonkey.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, THEY LIVE ELSEWHERE!, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe safari.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, GO BACK TO APPLE!, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe sleipnir.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, SORRY!, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe mmc.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, NICE TRY BUT YOU FAILED!, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe regedit32.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, NICE TRY, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe notepad.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, NO WRITING!, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe eventvwr.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, NOPE!, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe calc.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, USE YOUR OWN CALCULATOR!, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe melon.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, NO MUSIC!, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe wmplayer.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, NO MUSIC!!!!, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe obs.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, OBeSe!, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe teamviewer.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, OH NOPE!, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe supremo.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, REMOTE COCK!, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe logmein.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, NOPE!, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe mspaint.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, STOP MAKING EXCUSES AND DO YOUR STUDYING!, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe snippingtool.exe
{
	WinClose
	SoundPlay, *16
	Progress, m2 b fs18 zh0, USE PICPICK!, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else IfWinExist, ahk_exe I-MEPS_BA.exe
{
	WinKill
	SoundPlay, *16
	Progress, m2 b fs18 zh0, NOPE!, , , Times New Roman
	Sleep, 500
	Progress, off
}
Else
	goto, start
}