; Boot monitor module
; (C) 2016 Goldstar / OMFGThor, made exclusively for Danooct1 forums
; YES, I know it's a lazy-ass implementation. But I'm not a programmer!
#NoTrayIcon
#NoEnv
#Warn
#SingleInstance Force

; Check for the reboot count, and increase it by one
RegRead, BootCount, HKCU\TimeDate, IsBootTwice
NewBootCount := (BootCount+1)
; MsgBox, 32, Debug, BootCount: %BootCount%, NewBootCount: %NewBootCount%
RegWrite, REG_DWord, HKCU\TimeDate, IsBootTwice, %NewBootCount%
ExitApp
