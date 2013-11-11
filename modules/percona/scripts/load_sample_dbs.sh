#!/bin/bash

wget https://launchpad.net/test-db/employees-db-1/1.0.6/+download/employees_db-full-1.0.6.tar.bz2
tar xjvf employees_db-full-1.0.6.tar.bz2 && rm -f employees_db-full-1.0.6.tar.bz2
cd employees_db
mysql -t < employees.sql
wget http://downloads.mysql.com/docs/sakila-db.tar.gz
tar xzvf sakila-db.tar.gz && rm -f sakila-db.tar.gz
mysql < sakila-db/sakila-schema.sql
mysql sakila < sakila-db/sakila-data.sql


