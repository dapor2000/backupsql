#!/bin/bash
#Edit cronjob file
sed -i "s/MySQLIP/${MySQLIP}/" /config/cronjob
sed -i "s/SQL_userid/${SQL_userid}/" /config/cronjob
sed -i "s/SQL_pwd/${SQL_pwd}/" /config/cronjob
sed -i "s/TOKEN/${TOKEN}/" /config/cronjob
sed -i "s/BACKUPCOPIES/${BackupCopies}/" /config/cronjob
sed -i "s/MySQLPort/${SQL_port}/" /config/cronjob

#Edit crontab.txt file
sed -i "s/MINUTE/${bkpMinute}/" /config/crontab.txt
sed -i "s/HOUR/${bkpHour}/" /config/crontab.txt
sed -i "s/DAYM/${bkpDayOfMonth}/" /config/crontab.txt
sed -i "s/MONTH/${bkpMonth}/" /config/crontab.txt
sed -i "s/DAYW/${bkpDayOfWeek}/" /config/crontab.txt

export TERM=dumb

crontab /config/crontab.txt



