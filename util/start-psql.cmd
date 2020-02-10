rem Created by Lucas Schmitt at TK-Schulsoftware

echo === Starting PostgreSQL ===
start /B "" pgsql\bin\pg_ctl.exe start -D pgsql\data -l pgsql\log
sleep 2
echo Started PostgreSQL
IF "%DISABLE_PGADMIN%"=="TRUE" (
exit
)
echo === Starting PGAdmin 4 (PostgreSQL) ===
util\RunHiddenConsole.exe "pgsql\pgAdmin 4\bin\pgAdmin4.exe"
echo Started pgAdmin4
sleep 2
