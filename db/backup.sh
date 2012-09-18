#/bin/bash
NOW=$(date +"%Y%m%d")
DIR="/home/nik/rails/osidb/db/backup/"
DB="osidb"
PWD="DawNeydsojzukthecs"

mysqldump -t $DB incidents events sources -u osidb -p$PWD > "$DIR$DB-data-backup-$NOW.sql"
mysqldump -t $DB users -u osidb -p$PWD > "$DIR$DB-users-backup-$NOW.sql"
mysqldump -t $DB countries pvsectors attacks attackers targets -u osidb -p$PWD > "$DIR$DB-static-backup-$NOW.sql"
mysqldump --opt $DB -u osidb -p$PWD > "$DIR$DB-full-backup-$NOW.sql"

cd $DIR

tar -czvf osidb-backup-$NOW.sql.tgz *$NOW.sql
mpack -s "OSIDB backup of $NOW"  osidb-backup-$NOW.sql.tgz opensecurityincidentdb@gmail.com
mv osidb-backup-$NOW.sql.tgz /home/nik/backup
rm *$NOW.sql