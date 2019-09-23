# NPP
NginxPhpPostgres Development Stack for **Windows**
---
#### Installation:
- Get ``git clone  https://github.com/iphis/npp.git`` (preferably to a root path of a Disk/Partition for easier usage eg.: C:\NPP)
- (Optional) Set desired Nginx, PHP and Postgres Version by editing **config.cmd** (See [Config](#config))
- Run the **install.cmd** Batch
- (Optional) Create a Nginx Site Configurations in **/sites** (see sites/example.com.conf)
- (Optional) Add Directory for Desired Site to **/www** (see www/example.com)
- Ensure Environment Path Variables are set correctly for PHP and Postgres
- Operate Web Stack by running **start.cmd**,  **restart.cmd** and **stop.cmd**. 
---
By Default a example.com Test Page will be Hosted, you can access it by editing the hosts File.\
(Usually located under ```C:\Windows\System32\drivers\etc```)\
Add ``127.0.0.1		example.com`` at the end of file.\
You should now be able to access the self hosted example.com domain.
---
### Config
##### Nginx Versions
(Source: https://nginx.org/download/)
- 1.17.0 or higher

##### PHP Versions
(Source: https://windows.php.net/downloads/releases/archives/)
- 5.6.40
- 7.0.33
- 7.1.31
- 7.2.21
- 7.3.8

#####Postgres Versions
(Source: https://www.enterprisedb.com/download-postgresql-binaries)
- 11.5
- 10.10
- 9.6.15
---
Sources for Tools:
- unzip.exe: http://stahlworks.com/dev/index.php?tool=zipunzip
- RunHiddenConsole.exe: https://www.nginx.com/resources/wiki/start/topics/examples/phpfastcgionwindows/
