rem Created by Lucas Schmitt at TK-Schulsoftware

echo === Starting php-cgi (php %PHP_VERSION%) ===
util\RunHiddenConsole.exe php\%PHP_VERSION%\php-cgi.exe -b 127.0.0.1:9000
echo Started php-cgi
pause
