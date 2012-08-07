#/bin/bash
NOW=$(date +"%Y%m%d")
DIR="./backup/"

read -p "Enter database to backup : " DB
read -p "Enter database password : " PWD

mysqldump -t $DB incidents events sources -u root -p$PWD > "$DIR$DB-data-backup-$NOW.sql"
mysqldump -t $DB users -u root -p$PWD > "$DIR$DB-users-backup-$NOW.sql"
mysqldump -t $DB countries pvsectors attacks attackers targets -u root -p$PWD > "$DIR$DB-static-backup-$NOW.sql"
mysqldump --opt $DB -u root -p$PWD > "$DIR$DB-full-backup-$NOW.sql"
