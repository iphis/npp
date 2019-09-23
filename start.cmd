rem Created by Lucas Schmitt at TK-Schulsoftware

@ECHO OFF
call config.cmd

util\RunHiddenConsole.exe util\start-psql.cmd

util\RunHiddenConsole.exe util\start-php.cmd

util\RunHiddenConsole.exe util\start-nginx.cmd

msg "%username%"  Started PostgreSQL successfully.

exit
