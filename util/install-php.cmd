rem Created by Lucas Schmitt at TK-Schulsoftware

@ECHO OFF
call config.cmd

echo === Downloading PHP-%PHP_VERSION% ===

rem VisualStudio Version evaluation for PHP-%PHP_VERSION%

set VC_VERSION=15
IF /i %PHP_VERSION%==5.6.40 set VC_VERSION=11
IF /i %PHP_VERSION%==7.0.33 set VC_VERSION=14
IF /i %PHP_VERSION%==7.1.31 set VC_VERSION=14
IF /i %PHP_VERSION%==7.2.21 set VC_VERSION=15
IF /i %PHP_VERSION%==7.3.8 set VC_VERSION=15
IF /i %PHP_VERSION%==7.4.9 set VC_VERSION=15

mkdir php
cd php
mkdir %PHP_VERSION%
cd %PHP_VERSION%
powershell -Command "Invoke-WebRequest https://windows.php.net/downloads/releases/archives/php-%PHP_VERSION%-nts-Win32-VC%VC_VERSION%-x64.zip -OutFile php-%PHP_VERSION%.zip"
..\..\util\unzip.exe php-%PHP_VERSION%.zip
del php-%PHP_VERSION%.zip
cd ..
cd ..

msg "%username%"  Installed PHP successfully.
