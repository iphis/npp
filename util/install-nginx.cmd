rem Created by Lucas Schmitt at TK-Schulsoftware
@ECHO OFF
call config.cmd

if not [%1] == [] set NGINX_VERSION=%1

IF not exist nginx mkdir nginx
cd nginx

echo === Downloading Ngnix-%NGINX_VERSION% ===
powershell -Command "Invoke-WebRequest https://nginx.org/download/nginx-%NGINX_VERSION%.zip -OutFile nginx-%NGINX_VERSION%.zip"

cd ..
util\unzip.exe nginx\nginx-%NGINX_VERSION%.zip
move nginx-%NGINX_VERSION% nginx\%NGINX_VERSION%

cd nginx
del nginx-%NGINX_VERSION%.zip
cd ..

xcopy /y /f util\install-nginx.conf nginx\%NGINX_VERSION%\conf\nginx.conf

echo === Installed Ngnix-%NGINX_VERSION% successfully ===
