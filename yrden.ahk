#NoTrayIcon
;Process Locker, yet incomplete, don't use
IfWinExist, ahk_exe taskmgr.exe{
	WinSet, Disable
}
If ProcessExist("cmd.exe")
	BlockInput, On
If ProcessExist("regedit.exe")
	BlockInput, On


ProcessExist (Name){
	Process,Exist,%Name%
	return ErrorLevel
}