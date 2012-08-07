#/bin/bash

read -p "Enter root password : " ROOTPWD
read -p "Enter database : " DB
read -p "Enter db user : " DBUSR
read -p "Enter db password : " DBPWD

mysqladmin -f -u root -p$ROOTPWD drop $DB
mysqladmin -u root -p$ROOTPWD create $DB

#todo: grant less than ALL privileges...

mysql -h localhost -u root -p$ROOTPWD <<EOFMYSQL
DROP USER '$DBUSR'@localhost;
CREATE USER '$DBUSR'@localhost IDENTIFIED BY '$DBPWD';
GRANT ALL PRIVILEGES ON $DB.* To '$DBUSR'@'localhost';
EOFMYSQL
