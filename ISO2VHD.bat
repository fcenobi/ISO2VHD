@echo off

"%PROGRAMFILES%\7-Zip\7z" x "%~5" -o"%~dpn5"

set VHD_LABEL="%~7"

if "%~7"=="" set "VHD_LABEL=%~n5 VHD"

if not exist "%~dp1" mkdir "%~dp1"

call CreateBootableVHD_v3.bat "%~1" %2 %3 %4 "%~dpn5\sources\install.wim" %6 "%VHD_LABEL%"

RD /S /Q "%~dpn5"

ECHO BCDBOOT.EXE %4:\Windows >> "%~dp1\Boot %VHD_LABEL%.bat"
ECHO shutdown -t 0 -r >> "%~dp1\Boot %VHD_LABEL%.bat"