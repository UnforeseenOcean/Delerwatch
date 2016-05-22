@echo off
:loop
if exist %userprofile%\Desktop\*overwatch*.* (goto start) else goto loop
exit
:start
start delerwatch.cmd
