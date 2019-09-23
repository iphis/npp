rem Created by Lucas Schmitt at TK-Schulsoftware

@ECHO OFF
echo === Installing Nginx ===
call util\install-nginx.cmd
echo === Installing PHP ===
call util\install-php.cmd
echo === Installing PostgreSQL ===
call util\install-pgsql.cmd
echo === Setting Path Variables ===
call util\setpath.cmd
