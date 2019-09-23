rem Created by Lucas Schmitt at TK-Schulsoftware

@ECHO OFF
taskkill /f /IM nginx.exe
taskkill /f /IM php-cgi.exe
taskkill /f /IM pgAdmin4.exe
postgres\%PGSQL_VERSION%\bin\pg_ctl.exe -D postgres\%PGSQL_VERSION%\data stop

msg "%username%"  Stopped Nginx and PHP successfully
