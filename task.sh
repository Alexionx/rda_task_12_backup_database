#! /bin/bash

echo $DB_USER
echo $DB_PASSWORD

mysqldump -u "$DB_USER" -p"$DB_PASSWORD" --databases ShopDB > shopdb_backup.sql

mysql -u "$DB_USER" -p"$DB_PASSWORD" ShopDBReserve < shopdb_backup.sql


mysqldump -u "$DB_USER" -p"$DB_PASSWORD" --no-create-info ShopDB > shopdb_data_backup.sql

mysql -u "$DB_USER" -p"$DB_PASSWORD" ShopDBDevelopment < shopdb_data_backup.sql