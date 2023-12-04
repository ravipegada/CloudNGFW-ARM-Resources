#!/bin/bash
# package updates
sudo apt update 
# apache installation, enabling and status check
sudo apt -y install apache2
# MySQL Server installation, enabling and status check
sudo apt -y install mysql-server
# Copy files to showcase security use case
sudo wget -P /var/www/html/  https://raw.githubusercontent.com/ravipegada/CloudNGFW-ARM-Resources/main/web-to-db-attack.html
sudo wget -P /var/www/html/  https://raw.githubusercontent.com/ravipegada/CloudNGFW-ARM-Resources/main/sql-attack.html
sudo wget -P /var/www/html/  https://raw.githubusercontent.com/ravipegada/CloudNGFW-ARM-Resources/main/showheaders.php
sudo wget -P /var/www/html/  https://raw.githubusercontent.com/ravipegada/CloudNGFW-ARM-Resources/main/index.html
sudo wget -P /usr/lib/cgi-bin/ https://raw.githubusercontent.com/ravipegada/CloudNGFW-ARM-Resources/main/guess-sql-root-password.cgi
sudo wget -P /etc/apache2/mods-enabled/ https://raw.githubusercontent.com/ravipegada/CloudNGFW-ARM-Resources/main/cgi.load
sudo chmod 755 /usr/lib/cgi-bin/guess-sql-root-password.cgi
sudo service apache2 restart

