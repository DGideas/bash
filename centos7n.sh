echo ================================================================================
echo ================================================================================
echo ================================================================================
echo DGideas CentOS7 Install Command Build July,2015
echo + PHP + Nodejs + sl + wget + gcc + ppp + pptpd
echo Powered By DGideas
echo Thanks Github and sinaapp cloud!
echo ================================================================================
yum install -y php > /dev/null 2>&1
yum install -y sl > /dev/null 2>&1
yum install -y wget > /dev/null 2>&1
yum install -y sysstat > /dev/null 2>&1
cd
echo ================================================================================
echo ===============================Install Vpn tools...=============================
echo ================================================================================
yum install -y ppp > /dev/null 2>&1
yum install -y pptpd > /dev/null 2>&1
echo ===============================Successfully installed VPNs tools================
echo =============================Install Nodejs=====================================
cd
yum install -y nodejs > /dev/null 2>&1
echo ================================================================================
echo ================================================================================
echo ===========================[IMPORTANT]==========================================
echo ===Please use Vi edit /usr/bin/yum , and change #python to #python2.4===========
echo ================================================================================
echo ======You can copy this code to edit============================================
echo [     vi /usr/bin/yum                                                          ]
echo ================================================================================
echo Success > success.log
rm -f centos7n.sh
rm -f nohup.out
