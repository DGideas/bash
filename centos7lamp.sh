echo ================================================================================
echo ================================================================================
echo ================================================================================
echo DGideas CentOS7 Install Command Build July,2015
echo + PHP + Nodejs + sl + wget + gcc + httpd + mysql
echo Powered By DGideas
echo Thanks Github and sinaapp cloud!
echo ================================================================================
yum install -y php > /dev/null 2>&1
yum install -y sl > /dev/null 2>&1
yum install -y wget > /dev/null 2>&1
yum install -y sysstat > /dev/null 2>&1
cd
echo ================================================================================
echo ===============================Install Web Information Services...==============
echo ================================================================================
yum install -y httpd > /dev/null 2>&1
yum install -y mysql mysql-server > /dev/null 2>&1
service httpd start
service mysqld start
echo ===============================Successfully installed VPNs tools================
echo =============================Install Nodejs=====================================
cd
yum install -y nodejs
echo ================================================================================
echo ================================================================================
echo ===========================[IMPORTANT]==========================================
echo ===Please use Vi edit /usr/bin/yum , and change #python to #python2.4===========
echo ================================================================================
echo ======You can copy this code to edit============================================
echo [     vi /usr/bin/yum                                                          ]
echo ================================================================================
echo Success > success.log
rm -f centos7.sh
rm -f nohup.out

