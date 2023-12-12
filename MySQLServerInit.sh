#!/bin/bash
# package updates
sudo apt update 
# MySQL Server installation, enabling and status check
sudo apt -y install mysql-server

# Make sure that NOBODY can access the server without a password
mysql -e "UPDATE mysql.user SET Password = PASSWORD('mypassword') WHERE User = 'root'"
# Kill the anonymous users
mysql -e "DROP USER ''@'localhost'"
# Because our hostname varies we'll use some Bash magic here.
mysql -e "DROP USER ''@'$(hostname)'"
# Kill off the demo database
mysql -e "DROP DATABASE test"
# Make our changes take effect
mysql -e "FLUSH PRIVILEGES"
# Any subsequent tries to run queries this way will get access denied because lack of usr/pwd param

# Add mysql user 
mysql -e "create user "user1"@"%" identified by "MyPassword123""
sudo service mysql restart
sudo sed 's/bind-address/#bind-address/g' /etc/mysql/mysql.conf.d/mysql.cnf 

