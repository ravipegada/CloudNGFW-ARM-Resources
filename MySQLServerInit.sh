#!/bin/bash
# package updates
sudo apt update 
# MySQL Server installation, enabling and status check
sudo apt -y install mysql-server

mysql_secure_installation -u root --password="mypassword" --use-default
mysql -e "create user 'user1'@'%' identified by 'Mypassword@123'"

mysql -e "CREATE DATABASE demo"
mysql -e "USE demo"
mysql -e "GRANT ALL PRIVILEGES ON demo.* TO 'user1'@'%'"
mysql -e "FLUSH PRIVILEGES"

sudo sed -i 's/bind\-address/#bind\-address/g' /etc/mysql/mysql.conf.d/mysqld.cnf

sudo service mysql restart
