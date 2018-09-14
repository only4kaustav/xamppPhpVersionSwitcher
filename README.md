# XAMPP PHP VERSION SWITCHER

Assumptions : XAMPP with php 5 already installed in C:\xampp and running fine

STEP 1 : STOP Apache and MySQL server of XAMPP if already running

STEP 2 : Download XAMPP 7z or zip version and extract :  https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/

STEP 3 : Take php folder from extracted XAMPP and place in C:\xampp by renaming the folder name (e.g. php71 for v7.1, php72 for v7.2)

STEP 4 : Copy C:\xampp\apache\conf\extra\httpd-xampp.conf and place the same file with C:\xampp\apache\conf\extra\httpd-xampp71.conf (for version 7.1), So now both httpd-xampp.conf & httpd-xampp71.conf in same location

STEP 5 : Open C:\xampp\apache\conf\extra\httpd-xampp71.conf and change /xampp/php/ with /xampp/php71/, php5_module with php7_module, php5apache2_4.dll to php7apache2_4.dll

STEP 6 : Open \xampp\php7\php.ini and change \xampp\php\ with \xampp\php71\

STEP 7 : Execute same stapes from STEP 2 to STEP 6 for php 7.2 (in this case folder will be /xampp/php72/ but all others like php7_module or php7apache2_4.dll will stays same)

STEP 8 : Place this switcher anywhere in your machine

STEP 9 : Double click on phpSwitcher.bat and follow the instruction
