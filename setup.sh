#!/bin/bash

yum -y localinstall /usr/local/src/mysql57-community-release-el7-8.noarch.rpm
yum -y install mysql-community-server
