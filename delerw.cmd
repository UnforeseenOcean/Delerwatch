@echo off
echo This portion of the program is deprecated! Don't use this file.
:loop
if exist %userprofile%\Desktop\*overwatch*.* (goto start) else goto loop
exit
:start
start delerwatch.cmd
