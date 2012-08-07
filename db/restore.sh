#/bin/bash

DIR="./backup/"

read -p "Enter database-file (source) to restore : " DBFILE
read -p "Enter database (destination) to restore : " DB
read -p "Enter database password : " PWD
read -p "Enter date (YYYYMMDD) of restore point : " REST

mysql -u root $DB < "$DIR$DBFILE-full-backup-$REST.sql" -p$PWD