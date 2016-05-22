@echo off
:start
::for /D /R %%c in (*overwatch*) do playwav yah.wav
if exist %userprofile%\Desktop\*overwatch*.* (start delerwatch.cmd) else goto loop
:loop
goto start
