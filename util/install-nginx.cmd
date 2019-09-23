rem Created by Lucas Schmitt at TK-Schulsoftware

@ECHO OFF
call config.cmd

echo === Downloading Ngnix-%NGINX_VERSION% ===
powershell -Command "Invoke-WebRequest https://nginx.org/download/nginx-%NGINX_VERSION%.zip -OutFile nginx-%NGINX_VERSION%.zip"

util\unzip.exe nginx-%NGINX_VERSION%.zip
mkdir nginx
move nginx-%NGINX_VERSION% nginx\nginx-%NGINX_VERSION%
del nginx-%NGINX_VERSION%.zip

xcopy /y util\install-nginx.conf nginx\nginx-%NGINX_VERSION%\conf\nginx.conf

msg "%username%"  Installed Ngnix-%NGINX_VERSION% successfully.
