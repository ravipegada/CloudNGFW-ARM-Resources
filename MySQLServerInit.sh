#!/bin/bash
# package updates
sudo apt update 
# MySQL Server installation, enabling and status check
sudo apt -y install mysql-server
# Create User
sudo mysql -e "CREATE USER 'user1'@'localhost' IDENTIFIED BY 'password';"
sudo mysql -e "GRANT ALL PRIVILEGES ON * . * TO 'user1'@'localhost';"
sudo mysql -e "FLUSH PRIVILEGES;"
