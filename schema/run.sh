#!/bin/bash

set -e

curl -s -L -o /tmp/mongodb.zip "https://github.com/roboshop-devops-project/mongodb/archive/main.zip"
curl -s -L -o /tmp/mysql.zip "https://github.com/roboshop-devops-project/mysql/archive/main.zip"

cd /tmp/
unzip -o mongodb.zip
unzip -o mysql.zip
cd /tmp/mongodb-main
mongo --host mongo-mongodb < catalogue.js
mongo --host mongo-mongodb < users.js 

cd /tmp/mysql-main
mysql --host mysql -uroot -ppassword <shipping.sql
