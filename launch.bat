@echo off
color a
title Auto Virus Scan Version 1.8.1

if _%1_==_payload_  goto :payload

:getadmin
    echo %~nx0: elevating self
    set vbs=%temp%\getadmin.vbs
    echo Set UAC = CreateObject^("Shell.Application"^)                >> "%vbs%"
    echo UAC.ShellExecute "%~s0", "payload %~sdp0 %*", "", "runas", 1 >> "%vbs%"
    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
goto :eof

:payload
::set /P password="What is the password?"
::if password==leoiscool  goto :autoscan

:autoscan
cls
ECHO  _               _      __     __                   ____                  
ECHO ^| ^|    ___  ___ ( )___  \ \   / (_)_ __ _   _ ___  / ___^|  ___ __ _ _ __  
ECHO ^| ^|   / _ \/ _ \^|// __^|  \ \ / /^| ^| '__^| ^| ^| / __^| \___ \ / __/ _` ^| '_ \ 
ECHO ^| ^|__^|  __/ (_) ^| \__ \   \ V / ^| ^| ^|  ^| ^|_^| \__ \  ___) ^| (_^| (_^| ^| ^| ^| ^|
ECHO ^|_____\___^|\___/  ^|___/    \_/  ^|_^|_^|   \__,_^|___/ ^|____/ \___\__,_^|_^| ^|_^|
ECHO Super Cool Automatic Virus and Malware Scan version 1.8.0!
ECHO This Software is in Development! Use at Your Own Risk!!!
ECHO Please Contact Your Local Leo for More Information!
ECHO -
PAUSE
ECHO Scans Starting
ECHO -
SET PATH=C:
set drive=%~dp0

ECHO Prepping Hitman Pro
ECHO Clearing Previous Trial Activations
del "C:\ProgramData\HitmanPro"
ECHO Copying Hitman Pro to Local Drive
Copy "%drive%\HitmanPro_x64.exe" "%userprofile%\desktop"
ECHO HitmanPro Malware Scan Starting
"%userprofile%\desktop\Hitmanpro_x64.exe" /scan
Pause

ECHO HitmanPro Anti-Malware Scan Complete
ECHO Cleaning up
del "%userprofile%\desktop\Hitmanpro_x64.exe"
del "C:\ProgramData\HitmanPro"
ECHO Clean-up Complete
ECHO -
PAUSE

ECHO Super AntiSpyware Scan Starting
"%drive%\SUPERAntiSpyware.exe"
Pause

ECHO Glary Utilities Starting
"%drive%\Glary\Portable\OneClickMaintenance.exe"

ECHO AdwCleaner Scan Starting
"%drive%\adwcleaner_8.0.4.exe"
ECHO AdwCleaner Scans Complete

ECHO ALL SCANS COMPLETE
Pause
