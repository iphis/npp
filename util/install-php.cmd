rem Created by Lucas Schmitt at TK-Schulsoftware
@ECHO OFF
call config.cmd

if not [%1] == [] set PHP_VERSION=%1

rem VisualStudio Version evaluation for PHP-%PHP_VERSION%
set VC_VERSION=15
IF "%PHP_VERSION:~0,1%"=="5" set VC_VERSION=11

IF "%PHP_VERSION:~0,1%"=="7" set VC_VERSION=15

IF "%PHP_VERSION:~0,3%"=="7.0" set VC_VERSION=14
IF "%PHP_VERSION:~0,3%"=="7.1" set VC_VERSION=14

IF not exist php mkdir php
cd php

rmdir /s/q "%PHP_VERSION%"
mkdir %PHP_VERSION%
cd %PHP_VERSION%
echo === Downloading PHP-%PHP_VERSION% ===

powershell -Command "Invoke-WebRequest https://windows.php.net/downloads/releases/archives/php-%PHP_VERSION%-Win32-vc%VC_VERSION%-x64.zip -OutFile php-%PHP_VERSION%.zip"
..\..\util\unzip.exe php-%PHP_VERSION%.zip
del php-%PHP_VERSION%.zip

cd ..
cd ..

echo === Installed PHP-%PHP_VERSION% successfully ===