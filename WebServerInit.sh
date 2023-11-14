#!/bin/bash
# package updates
sudo apt update 
# apache installation, enabling and status check
sudo apt -y install apache2
# Copy files to showcase security use case
sudo wget -P /var/www/html/  https://github.com/ravipegada/CloudNGFW-ARM-Resources/blob/main/web-to-db-attack.html
sudo wget -P /var/www/html/  https://github.com/ravipegada/CloudNGFW-ARM-Resources/blob/main/sql-attack.html
sudo wget -P /var/www/html/  https://github.com/ravipegada/CloudNGFW-ARM-Resources/blob/main/showheaders.php
sudo wget -P /var/www/html/  https://github.com/ravipegada/CloudNGFW-ARM-Resources/blob/main/index.html
sudo wget -P /usr/lib/cgi-bin/ https://github.com/ravipegada/CloudNGFW-ARM-Resources/blob/main/guess-sql-root-password.cgi
sudo service apache2 restart

