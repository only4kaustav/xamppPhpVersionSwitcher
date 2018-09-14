@echo off
set /p phpversion=Which version you want to use 5.6 or 7.1 or 7.2(5/71/72) :
set file_name=%cd%\php%phpversion%\httpd.conf
IF EXIST %file_name% (
 xcopy %file_name% C:\xampp\apache\conf\httpd.conf /E /H /C /R /Q /Y
 C:\xampp\apache_stop.bat
 C:\xampp\apache_start.bat
 exit
)ELSE (
 echo Please choose 5 or 71 or 72... Good Bye...
 pause >nul
)