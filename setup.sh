#!/bin/bash

yum -y localinstall /usr/local/src/mysql57-community-release-el7-8.noarch.rpm
yum -y install epel-release
yum -y install mysql-community-server supervisor

cat <<EOF > /etc/supervisord.d/mysql.ini
[supervisord]
nodaemon=true

[program:mysqld]
command=/usr/bin/mysqld
autostart=true
autorestart=true
EOF
