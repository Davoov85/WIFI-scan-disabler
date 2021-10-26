@ECHO OFF

:MENU
cls
@ECHO =====================================
@ECHO 1 : show setting
@ECHO 2 : set autoconfig disabled
@ECHO 3 : set autoconfig enabled
@ECHO 4 : exit
@ECHO choose the number you want to run
@ECHO =====================================

set /p x=number :

if %x%==1 goto first

if %x%==2 goto second

if %x%==3 goto third

if %x%==4 goto fourth

goto MENU

:first
cls
netsh wlan show settings
pause
goto MENU

:second
cls
netsh wlan set autoconfig enabled=no interface="Wi-Fi"
pause
goto MENU

:third
cls
netsh wlan set autoconfig enabled=yes interface="Wi-Fi"
pause
goto MENU

:fourth
exit











PAUSE>nul
