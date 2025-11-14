@echo off
for /f "usebackq tokens=* delims=" %%a in ("profiles.txt") do (
    set "profiles=%%a"
)

echo. [32m/$$$$$$              /$$                                         /$$                        
echo. /$$__  $$            ^| $$                                        ^| $$                        
echo.^| $$  \ $$ /$$   /$$ /$$$$$$    /$$$$$$  /$$$$$$/$$$$   /$$$$$$  /$$$$$$    /$$$$$$   /$$$$$$ 
echo.^| $$$$$$$$^| $$  ^| $$^|_  $$_/   /$$__  $$^| $$_  $$_  $$ ^|____  $$^|_  $$_/   /$$__  $$ /$$__  $$
echo.^| $$__  $$^| $$  ^| $$  ^| $$    ^| $$  \ $$^| $$ \ $$ \ $$  /$$$$$$$  ^| $$    ^| $$  \ $$^| $$  \__/
echo.^| $$  ^| $$^| $$  ^| $$  ^| $$ /$$^| $$  ^| $$^| $$ ^| $$ ^| $$ /$$__  $$  ^| $$ /$$^| $$  ^| $$^| $$      
echo.^| $$  ^| $$^|  $$$$$$/  ^|  $$$$/^|  $$$$$$/^| $$ ^| $$ ^| $$^|  $$$$$$$  ^|  $$$$/^|  $$$$$$/^| $$      
echo.^|__/  ^|__/ \______/    \___/   \______/ ^|__/ ^|__/ ^|__/ \_______/   \___/   \______/ ^|__/      
echo.
echo.
echo MONEYMAKER, SONO RICCO PER SEMPRE
echo.
echo Created by [33m@Lo_zambet[32m, all rights reserved
echo.
echo.
echo.
echo Choose option: [[92m+[32m]
echo [96m1.[32m Automate everything
echo [96m2.[32m Start excel
echo [96m3.[32m Exit
echo.
set /p choice=">_"
if %choice%==1 goto :auto
if %choice%==2 goto :excel
if %choice%==3 goto :exit

:auto
cls
echo. [32m/$$$$$$              /$$                                         /$$                        
echo. /$$__  $$            ^| $$                                        ^| $$                        
echo.^| $$  \ $$ /$$   /$$ /$$$$$$    /$$$$$$  /$$$$$$/$$$$   /$$$$$$  /$$$$$$    /$$$$$$   /$$$$$$ 
echo.^| $$$$$$$$^| $$  ^| $$^|_  $$_/   /$$__  $$^| $$_  $$_  $$ ^|____  $$^|_  $$_/   /$$__  $$ /$$__  $$
echo.^| $$__  $$^| $$  ^| $$  ^| $$    ^| $$  \ $$^| $$ \ $$ \ $$  /$$$$$$$  ^| $$    ^| $$  \ $$^| $$  \__/
echo.^| $$  ^| $$^| $$  ^| $$  ^| $$ /$$^| $$  ^| $$^| $$ ^| $$ ^| $$ /$$__  $$  ^| $$ /$$^| $$  ^| $$^| $$      
echo.^| $$  ^| $$^|  $$$$$$/  ^|  $$$$/^|  $$$$$$/^| $$ ^| $$ ^| $$^|  $$$$$$$  ^|  $$$$/^|  $$$$$$/^| $$      
echo.^|__/  ^|__/ \______/    \___/   \______/ ^|__/ ^|__/ ^|__/ \_______/   \___/   \______/ ^|__/      
echo.
echo.
echo MONEYMAKER, SONO RICCO PER SEMPRE
echo.
echo Created by [33m@Lo_zambet[32m, all rights reserved
echo.
echo.
echo.
echo start automation? Y/n
set /p answer=">_"
if "%answer%" NEQ "Y" goto exit
echo [*] starting excel...
start excel.exe
echo [*] starting main page...
start "" "msedge.exe" --profile.directory="Default"
start https://rewards.bing.com
for %%p in (%profiles%) do (
    echo [*] Avvio Profile %%p...
    start "" msedge.exe --profile-directory="Profile %%p"
    timeout /t 0.5 >nul
)



:excel
cls
echo [*] starting excel...
start excel.exe


:exit
echo [[31mx[32m]closing the program
exit