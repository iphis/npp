@ECHO OFF

if %1=='nginx' & %1=='php'&  %1=='pgsql' (
echo === Installing %1 ===
call util\install-%1.cmd
) else (
echo === Installing Nginx ===
call util\install-nginx.cmd
echo === Installing PHP ===
call util\install-php.cmd
echo === Installing PostgreSQL ===
call util\install-pgsql.cmd
echo === Setting Path Variables ===
call util\setpath.cmd
)