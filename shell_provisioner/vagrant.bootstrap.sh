#!/usr/bin/env bash

# add the EPEL repo
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY*
yum -y install epel-release

# mariaDB
echo "================================================================================"
echo "   Installing MariaDB"
echo "================================================================================"
yum -y install mariadb-server mariadb
systemctl start mariadb.service
systemctl enable mariadb.service

# apache
echo "================================================================================"
echo "   Installing Apache"
echo "================================================================================"
yum -y -q install httpd
systemctl restart httpd.service
systemctl enable httpd.service

firewall-cmd --permanent --zone=public --add-service=http 
firewall-cmd --permanent --zone=public --add-service=https
firewall-cmd --reload

# php
echo "================================================================================"
echo "   Installing PHP 7.1"
echo "================================================================================"
rpm -Uvh http://rpms.remirepo.net/enterprise/remi-release-7.rpm
yum -y install yum-utils
yum update
yum-config-manager --enable remi-php71
yum -y install php php-opcache
yum -y install php-mysqlnd php-pdo

systemctl restart httpd.service

# phpmyadmin
echo "================================================================================"
echo "   Installing PhpMyADMIN"
echo "================================================================================"
yum -y install phpMyAdmin

