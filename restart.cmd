rem Created by Lucas Schmitt at TK-Schulsoftware

@ECHO OFF
echo === Stopping nginx, php-cgi, postgres ===
call stop.cmd
echo === Starting nginx, php-cgi, postgres ===
call start.cmd
