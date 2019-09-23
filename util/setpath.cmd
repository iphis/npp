rem Created by Lucas Schmitt at TK-Schulsoftware

call config.cmd

set DIR=%~dp0
set PGSQL=%DIR%pgsql\bin
set PHP=%DIR%php\%PHP_VERSION%
setx /M PATH "%PHP%;%PATH%"
setx /M PATH "%PGSQL%;%PATH%"

msg "%username%"  Set Path Variables successfully, please restart your computer.
