rem Created by Lucas Schmitt at TK-Schulsoftware

@ECHO OFF
call config.cmd

util\unzip.exe util\install-php.zip

msg "%username%"  Installed PHP successfully.
