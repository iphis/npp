@ECHO OFF

call config.cmd
echo === Starting NPP ===

echo === Starting NGINX ===
util\RunHiddenConsole.exe util\start-nginx.cmd

echo === Starting PHP ===
util\RunHiddenConsole.exe util\start-php.cmd

echo === Starting PGSQL ===
util\RunHiddenConsole.exe util\start-psql.cmd

echo === Started NPP successfully ===