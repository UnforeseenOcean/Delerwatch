@echo off
C:
cd %userprofile%
cd Desktop
::for /D /R %%c in (*overwatch*) do playwav yah.wav
for /R %%f in (*overwatch*.*) do start delerwatch.cmd
