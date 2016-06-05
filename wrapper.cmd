::@echo off
mkdir C:\Blah\
set curdir=%~dp0
echo Wrapper stuff
echo Look for program files
echo Look for D:
echo Look for Documents/Games/
copy lol.wav /B "C:\Blah\lol.wav" /Y /V
copy overwch.ico /B "C:\Blah\overwch.ico" /Y /V
:: String to look for: Overwatch
start movewindow.exe
pause >nul