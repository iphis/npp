@ECHO OFF

call config.cmd

taskkill /f /IM nginx.exe

taskkill /f /IM php-cgi.exe


postgres\%PGSQL_VERSION%\bin\pg_ctl.exe -D postgres\%PGSQL_VERSION%\data stop

if "%DISABLE_PGADMIN%"=="TRUE" goto EXIT

taskkill /f /IM pgAdmin4.exe

:EXIT
echo === Stopped NPP successfully ===