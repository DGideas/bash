cd
yum install -y gcc
yum install -y gcc
yum install -y wget
yum install -y git
wget https://github.com/DGideas/mirror/raw/master/Python-3.3.0.tar.bz2
yum install -y tar
yum install -y bzip2
tar -jxvf Python-3.3.0.tar.bz2
cd ~/Python-3.3.0
./configure
make all
make install
make clean
make distclean
mv /usr/bin/python /usr/bin/python2.4
ln -s /usr/local/bin/python3.3 /usr/bin/python
cd
wget https://github.com/DGideas/mirror/raw/master/node-latest.tar.gz
tar -xvzf node-latest.tar.gz
rm -f node-latest.tar.gz
cd ~/node-v0.12.7/
./configure
cd ~/ ; rm -rf ~/node-v0.12.7/
RUN cd ~/ ; printf '\n# Node.js\nexport PATH="node_modules/.bin:$PATH"' >> /root/.bashrc
