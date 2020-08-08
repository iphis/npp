@ECHO OFF
call config.cmd

echo === Stopping nginx, php-cgi ===
call stop.cmd
echo === Starting nginx, php-cgi ===
call start.cmd