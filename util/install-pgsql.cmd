rem Created by Lucas Schmitt at TK-Schulsoftware

@ECHO OFF
call config.cmd

util\unzip.exe util\install-pgsql.zip

pgsql\bin\initdb.exe -E UTF8 -D pgsql\data

start "" pgsql\bin\pg_ctl.exe start -D pgsql\data -l pgsql\log

pgsql\bin\createuser.exe -d -r -s postgres

start "" pgsql\bin\pg_ctl.exe stop -D pgsql\data

msg "%username%"  Installed Postgres-10.9 successfully.
