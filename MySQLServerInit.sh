#!/bin/bash
# package updates
sudo apt update 
# MySQL Server installation, enabling and status check
sudo apt -y install mysql-server
# Create User
sudo mysql
CREATE USER 'user1'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON * . * TO 'user1'@'localhost';
FLUSH PRIVILEGES;
exit
