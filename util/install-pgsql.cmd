rem Created by Lucas Schmitt at TK-Schulsoftware
@ECHO OFF
call config.cmd

if not [%1] == [] set PGSQL_VERSION=%1

IF not exist postgres mkdir postgres
cd postgres

echo === Downloading PosgreSQL-%PGSQL_VERSION% ===
powershell -Command "Invoke-WebRequest https://get.enterprisedb.com/postgresql/postgresql-%PGSQL_VERSION%-1-windows-x64-binaries.zip -OutFile postgres-%PGSQL_VERSION%.zip"

cd ..
util\unzip.exe postgres\postgres-%PGSQL_VERSION%.zip

cd postgres
move pgsql %PGSQL_VERSION%
del postgres-%PGSQL_VERSION%.zip
cd ..

postgres\%PGSQL_VERSION%\bin\initdb.exe -E UTF8 -D postgres\%PGSQL_VERSION%\data

start "" postgres\%PGSQL_VERSION%\bin\pg_ctl.exe start -D postgres\%PGSQL_VERSION%\data -l postgres\%PGSQL_VERSION%\log

postgres\%PGSQL_VERSION%\bin\createuser.exe -d -r -s postgres

start "" postgres\%PGSQL_VERSION%\bin\pg_ctl.exe stop -D postgres\%PGSQL_VERSION%\data

echo === Installed Postgres-10.9 successfully ===
