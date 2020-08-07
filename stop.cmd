@ECHO OFF
taskkill /f /IM nginx.exe

taskkill /f /IM php-cgi.exe

IF NOT (%DISABLE_PGADMIN% == "FALSE") GOTO STOP_PGADMIN

:STOP_PGSQL
pgsql\bin\pg_ctl.exe -D pgsql\data stop

msg "%username%"  Stopped NPP successfully

GOTO EXIT0

:STOP_PGADMIN
taskkill /f /IM pgAdmin4.exe
GOTO STOP_PGSQL

:EXIT0