# NPP
NginxPhpPostgres Development Stack for **Windows**

####Installation:
- Download Latest Release from https://github.com/iphis/NPP/releases
- Set desired Nginx and PHP Version by editing **config.cmd**
- Run the **install.cmd** Batch
- Create a Nginx Site Configurations in **/sites** (see sites/example.com.conf)
- Add Directory for Desired Site to **/www** (see www/example.com)
- Ensure Environment Path Variables are set correctly for PHP and Postgres
- Operate Web Stack by running **start.cmd**,  **restart.cmd** and **stop.cmd**. 

#####Nginx Versions available
- All versions official from: https://nginx.org/download/

#####PHP Versions available
- 5.2.10
- 5.6.9
- 7.0.8
- 7.1.30
- 7.2.19
- 7.3.6

#####Postgres Versions available
- 11
