rem Created by Lucas Schmitt at TK-Schulsoftware

@ECHO OFF
echo === Stopping nginx, php-cgi ===
call stop.cmd
echo === Starting nginx, php-cgi ===
call start.cmd
