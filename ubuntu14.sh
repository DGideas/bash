echo ================================================================================
echo ================================================================================
echo ================================================================================
echo DGideas Ubuntu14.04 Install Command Build July,2015
echo + PHP + Python3 + Nodejs + sl + wget + gcc + ppp + pptpd
echo Powered By DGideas
echo Thanks Github.
echo ================================================================================
apt-get install -y php > /dev/null 2>&1
apt-get install -y nodejs > /dev/null 2>&1
apt-get install -y sl > /dev/null 2>&1
apt-get install -y wget > /dev/null 2>&1
apt-get install -y sysstat > /dev/null 2>&1
cd
echo ================================================================================
echo Getting Wget Python-3.3.0.tar.bz2 From DGideas GitHub Mirror...
echo =====================Notifications==============================================
echo + This step would take long time. It depends on your region and 
echo   network settings.
echo + This mirror is from DGideas/mirror. Thanks DGideas and Github!
echo + Any questions? Please send email to dgideas@outlook.com
echo ================================================================================
wget https://github.com/DataCluster/mirror/raw/master/Python-3.3.0.tar.bz2
echo ================================================================================
echo ===============================Download Successfully!!!=========================
echo ===============================Upzip Package...Please wait======================
tar -jxvf Python-3.3.0.tar.bz2 > /dev/null 2>&1
rm -f Python-3.3.0.tar.bz2 > /dev/null 2>&1
cd Python-3.3.0 > /dev/null 2>&1
echo ===============================Configure Python...==============================
./configure > /dev/null 2>&1
echo ================================================================================
echo Build Python...Please wait a moment, sit and relax...
echo ================================================================================
echo ===============================Make All...======================================
make all > /dev/null 2>&1
echo ===============================Make Install...==================================
make install > /dev/null 2>&1
echo ===============================Make Clean...====================================
make clean > /dev/null
echo ===============================Make Distclean...================================
make distclean > /dev/null 2>&1
/usr/local/bin/python3 -V
echo ===============================Install Python 3 Successfully====================
mv /usr/bin/python /usr/bin/python2.4
ln -s /usr/local/bin/python3.3 /usr/bin/python
python -V
echo ================================================================================
echo ===============================Install Vpn tools...=============================
echo ================================================================================
apt-get install -y ppp > /dev/null 2>&1
apt-get install -y pptpd > /dev/null 2>&1
echo ===============================Successfully installed VPNs tools================
echo =============================Install Nodejs=====================================
cd
wget https://github.com/DataCluster/mirror/raw/master/node-latest.tar.gz > /dev/null 2>&1
tar -xvzf node-latest.tar.gz > /dev/null 2>&1
rm -f node-latest.tar.gz > /dev/null 2>&1
cd ~/node-v0.12.7/ > /dev/null 2>&1
echo ===============================Configure Nodejs...==============================
./configure > /dev/null 2>&1
echo ================================================================================
echo Build Nodejs...Please wait a moment, sit and relax...
echo ================================================================================
echo ===========================Making...============================================
make > /dev/null 2>&1
echo ===========================Make install...======================================
make install > /dev/null 2>&1
echo ================================================================================
echo ================================================================================
echo ===========================[IMPORTANT]==========================================
echo ===Please use Vi edit /usr/bin/yum , and change #python to #python2.4===========
echo ================================================================================
echo ======You can copy this code to edit============================================
echo [     vi /usr/bin/yum                                                          ]
echo ================================================================================
echo Success > success.log
rm -rf ~/node-v0.12.7/
rm -rf ~/Python-3.3.0/
rm -f ubuntu14.sh
rm -f nohup.out
