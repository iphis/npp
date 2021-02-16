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

#### Example.com
By Default a example.com Test Page will be Hosted, you will need to edit the hosts File.\
(Usually located under ```C:\Windows\System32\drivers\etc\hosts```)\
Add ``127.0.0.1		example.com`` at the end of file.\
You should now be able to access the self hosted example.com domain in your Browser.

---

### Config

##### Nginx Versions

(Source: https://nginx.org/download/ )
- 1.17.0 or higher

##### PHP Versions

(Source: https://windows.php.net/downloads/releases/archives/ )
- 5.6
- 7.0.33
- 7.1.31
- 7.2.21
- 7.3.8
- 7.4.8

##### Postgres Versions

(Source: https://www.enterprisedb.com/download-postgresql-binaries )
- 12.3
- 11.8
- 10.13

---

Sources of used Tools:
- unzip.exe: http://stahlworks.com/dev/index.php?tool=zipunzip
- RunHiddenConsole.exe: https://redmine.lighttpd.net/attachments/660/RunHiddenConsole.zip
