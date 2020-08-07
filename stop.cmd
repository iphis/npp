@ECHO OFF
taskkill /f /IM nginx.exe
taskkill /f /IM php-cgi.exe
IF "%DISABLE_PGADMIN%"!="TRUE" (
taskkill /f /IM pgAdmin4.exe
)
pgsql\bin\pg_ctl.exe -D pgsql\data stop

msg "%username%"  Stopped NPP successfully