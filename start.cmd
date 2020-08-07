@ECHO OFF

call config.cmd
util\RunHiddenConsole.exe util\start-psql.cmd
util\RunHiddenConsole.exe util\start-php.cmd
util\RunHiddenConsole.exe util\start-nginx.cmd

msg "%username%"  Started NPP successfully.

exit