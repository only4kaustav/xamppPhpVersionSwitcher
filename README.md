# XAMPP PHP VERSION SWITCHER

Prerequisite : XAMPP with php 5 should already installed and running fine

Goal : Implement multiple php version i.e. php5, php7.1 and php7.2 in a single xampp

STEP 1 : STOP Apache and MySQL server of XAMPP if already running

STEP 2 : Download XAMPP 7z or zip version and extract, Reference link :  https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/

STEP 3 : Take php folder from extracted xampp downloaded in STEP 2 and place in previously installed "xampp" directory by renaming the folder name (e.g. php71 for v7.1, php72 for v7.2). So there will be multiple php folder like "php", "php71", "php72" in same location

STEP 4 : Copy "xampp\apache\conf\extra\httpd-xampp.conf" from installed "xampp" directory and place the same file with "xampp\apache\conf\extra\httpd-xampp71.conf" (for version 7.1), So now both httpd-xampp.conf & httpd-xampp71.conf are in same location

STEP 5 : Open "xampp\apache\conf\extra\httpd-xampp71.conf" and change all occurrence of "/xampp/php/" with "/xampp/php71/", "php5_module" with "php7_module", "php5apache2_4.dll" to "php7apache2_4.dll"

STEP 6 : Open "xampp\php7\php.ini" and change all occurrence of "\xampp\php\" with "\xampp\php71\"

STEP 7 : Execute same stapes from STEP 2 to STEP 6 for php 7.2 (in this case folder will be "/xampp/php72/" but all others like "php7_module" or "php7apache2_4.dll" will stays same)

STEP 8 : Place this switcher folder anywhere in your machine

STEP 9 : Double click on phpSwitcher.bat and input as required
