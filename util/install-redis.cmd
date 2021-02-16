rem Created by Lucas Schmitt at TK-Schulsoftware
@ECHO OFF
call config.cmd

IF not exist redis mkdir redis

echo === Downloading Redis-Latest ===
powershell -Command "wget https://github.com/ServiceStack/redis-windows/raw/master/downloads/redis-latest.zip -outfile redis\redis.zip"

cd redis

..\util\unzip.exe .\redis.zip

del redis.zip
cd ..

echo === Installed Redis-Latest successfully ===
