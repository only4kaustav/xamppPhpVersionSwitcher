@echo off
IF NOT EXIST xampp_path.txt (
  echo "xampp_path.txt" not in place. Please place the same as per instruction given in README
  pause >nul
  exit
)
for /f "tokens=*" %%A in (xampp_path.txt) do (set xampp_path=%%A)
IF NOT EXIST %xampp_path%apache_start.bat (
  echo Please specify full path of xampp directory in "xampp_path.txt"
  pause >nul
  exit
)
set /p phpversion=Which version you want to use 5.6 or 7.1 or 7.2 (5/71/72) :
set file_name=%cd%\php%phpversion%\httpd.conf
IF EXIST %file_name% (
 xcopy %file_name% %xampp_path%apache\conf\httpd.conf /E /H /C /R /Q /Y
 %xampp_path%apache_stop.bat
 %xampp_path%apache_start.bat
 exit
)ELSE (
 echo Please choose 5 or 71 or 72... Good Bye...
 pause >nul
)