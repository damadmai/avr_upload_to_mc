@echo off
REM Convenient AVRDUDE-programming (C) Daniel A. Maierhofer 2014 - damadmai
REM Searches for a .hex-file in the subdirectories Release or Debug or the 
REM current directory as it will be inside an Atmel Studio Project and lets
REM select from the available COM-Ports. Repeats programming until stopped.
REM Start by doubleclick, close by window close button or Ctrl+C, Y, Return
REM for more information visit https://www.mikrocontroller.net/topic/340516

echo Found COM-Ports:
for /f "tokens=4" %%A in ('mode^|findstr "COM[0-9]: COM[0-9][0-9]: COM[0-9][0-9][0-9]:"') do echo %%A
set /p CNR=COM-Port number(number only)?: 
cd Release 2> nul || cd Debug 2> nul
:program
for %%a in (*.hex) do avrdude -patmega328p -carduino -P\\.\COM%CNR% -b57600 -Uflash:w:"%%a":i
for %%a in (*.eep) do avrdude -patmega328p -carduino -P\\.\COM%CNR% -b57600 -Ueeprom:w:"%%a":i
echo Press any key for another programming cycle via COM%CNR%.
pause
goto program
