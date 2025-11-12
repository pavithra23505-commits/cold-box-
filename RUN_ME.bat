@echo off
echo STARTING YOUR HACK APP...
cd /d "%~dp0coldbox-hack"
if not exist box.json exit
powershell -Command "Invoke-WebRequest https://downloads.ortussolutions.com/ortussolutions/commandbox/commandbox-jre-win64.exe -OutFile ../box.exe"
../box.exe install coldbox
../box.exe server start
pause
