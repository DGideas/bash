cd
yum install httpd httpd-devel mysql mysql-server mysql-devel php php-devel php-mysql php-common php-gd libjpeg* php-imap php-ldap　php-odbc php-pear php-xml php-xmlrpc php-mbstring php-mcrypt php-bcmath php-mhash libmcrypt
chkconfig httpd on
chkconfig mysqld on
service httpd start
service mysqld start
wget https://github.com/mongodb/mongo-php-driver/archive/master.zip
unzip master.zip
cd mongo-php-driver-master/
phpize
./configure
make
sudo make install
cd
echo Success > success.log
rm -f centos6lamp.sh
rm -f master.zip
rm -rf ~/mongo-php-driver-master/
echo ==========================IMPORTANT==========================
echo Please follow this introduction to change php.ini:
echo http://php.net/manual/zh/mongo.installation.php#mongo.installation.manual
