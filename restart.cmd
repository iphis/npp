@ECHO OFF
call config.cmd

echo === Stopping nginx, php-cgi ===
taskkill /f /IM nginx.exe
taskkill /f /IM php-cgi.exe
taskkill /f /IM pgAdmin4.exe
pgsql\bin\pg_ctl.exe -D pgsql\data stop
echo === Starting nginx, php-cgi ===

util\RunHiddenConsole.exe util\start-psql.cmd
util\RunHiddenConsole.exe util\start-php.cmd
util\RunHiddenConsole.exe util\start-nginx.cmd