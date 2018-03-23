@ECHO OFF
COLOR 0c
echo                       +------------------------------------------------------+
echo                       + Fix Printer Installation Error 0x00000057 Error     +
echo                       +                              By Peter Cheung        +
echo                       +-----------------------------------------------------+
echo.
echo                            Please Run as Administrator 
echo.
echo                       +---------------------------------------------+
echo                       +   The Batch Will Delete Following File      +
echo                       +  drvindex.dat INFCACHE.1 infpub.dat         +
echo			      +  infstor.dat infstrng.dat !!!!              +
echo                       +---------------------------------------------+
echo.

set /P c= "Are you sure you want to continue [Y/N]?"
:choice
if /I "%c%" EQU "Y" goto :Del
if /I "%c%" EQU "N" goto :Del_else
goto :choice


:Del
cd C:\Windows\System32\DriverStore\
Icacls drvindex.dat  /grant Administrator:(D,WDAC)
Icacls INFCACHE.1  /grant Administrator:(D,WDAC)
Icacls infpub.dat  /grant Administrator:(D,WDAC)
Icacls infstor.dat  /grant Administrator:(D,WDAC)
Icacls infstrng.dat  /grant Administrator:(D,WDAC)
del drvindex.dat
del INFCACHE.1
del infpub.dat 
del infstor.dat
del infstrng.dat
pause
exit

:Del_else
pause
exit