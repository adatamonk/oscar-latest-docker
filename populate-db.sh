#!/bin/bash

#cd /code
/code/wait-for-it.sh -t 20 localhost:3306
cd /code/oscar/database/mysql
./createdatabase_bc.sh root liyi oscar_mcmaster
# ./createdatabase_on.sh root liyi oscar_mcmaster

mysql -uroot -pliyi -e "CREATE DATABASE drugref2 CHARACTER SET UTF8 COLLATE UTF8_GENERAL_CI;"