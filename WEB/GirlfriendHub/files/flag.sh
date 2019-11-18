#!/bin/bash

# 修改数据库中的 FLAG
mysql -e "CREATE DATABASE IF NOT EXISTS girlfriendhub;USE girlfriendhub; CREATE TABLE IF NOT EXISTS xzitctf (flag varchar(100) NOT NULL) ;INSERT INTO  xzitctf VALUES ('$FLAG');" -uroot -proot

export FLAG=not_flag
FLAG=not_flag

rm -f /flag.sh