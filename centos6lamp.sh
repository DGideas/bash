yum install httpd httpd-devel mysql mysql-server mysql-devel php php-devel php-mysql php-common php-gd libjpeg* php-imap php-ldap　php-odbc php-pear php-xml php-xmlrpc php-mbstring php-mcrypt php-bcmath php-mhash libmcrypt
chkconfig httpd on
chkconfig mysqld on
service httpd start
service mysqld start
