rem Created by Lucas Schmitt at TK-Schulsoftware
@ECHO OFF
call config.cmd

echo === Downloading PosgreSQL-%PGSQL_VERSION% ===
powershell -Command "Invoke-WebRequest https://get.enterprisedb.com/postgresql/postgresql-%PGSQL_VERSION%-1-windows-x64-binaries.zip -OutFile postgres-%PGSQL_VERSION%.zip"

util\unzip.exe postgres-%PGSQL_VERSION%.zip
mkdir postgres
move pgsql postgres\%PGSQL_VERSION%
del postgres-%PGSQL_VERSION%.zip

postgres\%PGSQL_VERSION%\bin\initdb.exe -E UTF8 -D postgres\%PGSQL_VERSION%\data

start "" postgres\%PGSQL_VERSION%\bin\pg_ctl.exe start -D postgres\%PGSQL_VERSION%\data -l postgres\%PGSQL_VERSION%\log

postgres\%PGSQL_VERSION%\bin\createuser.exe -d -r -s postgres

start "" postgres\%PGSQL_VERSION%\bin\pg_ctl.exe stop -D postgres\%PGSQL_VERSION%\data

msg "%username%"  Installed Postgres-10.9 successfully.
