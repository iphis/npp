rem Created by Lucas Schmitt at TK-Schulsoftware
@ECHO OFF

if not [%1] == []  GOTO %1

:NGINX
    call util\install-nginx.cmd %2
    if not [%1] == []  GOTO EXIT
GOTO PHP

:PHP
    call util\install-php.cmd %2
    if not [%1] == []  GOTO EXIT
GOTO PGSQL

:PGSQL
    call util\install-pgsql.cmd %2
    if not [%1] == []  GOTO EXIT
GOTO REDIS

:REDIS
    call util\install-redis.cmd
    if not [%1] == []  GOTO EXIT
GOTO EXIT

:EXIT
pause