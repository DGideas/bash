yum install -y make gcc gmp-devel bison flex openswan
mv /etc/ipsec.conf /etc/ipsec.conf.bak
cat >>/etc/ipsec.conf<<EOF
#ipsec.conf
version 2.0
config setup
    nat_traversal=yes
    virtual_private=%v4:10.0.0.0/8,%v4:192.168.0.0/16,%v4:172.16.0.0/12
    oe=off
    protostack=netkey
 
conn L2TP-PSK-NAT
    rightsubnet=vhost:%priv
    also=L2TP-PSK-noNAT
 
conn L2TP-PSK-noNAT
    authby=secret
    pfs=no
    auto=add
    keyingtries=3
    rekey=no
    ikelifetime=8h
    keylife=1h
    type=transport
    left=YOUR.SERVER.IP.ADDRESS
    leftprotoport=17/1701
    right=%any
    rightprotoport=17/%any
EOF
rm -r /etc/ipsec.secrets
cat >>/etc/ipsec.secrets<<EOF
YOUR.SERVER.IP.ADDRESS %any: PSK "YourSharedSecret"
EOF
for each in /proc/sys/net/ipv4/conf/*
do
echo 0 > $each/accept_redirects
echo 0 > $each/send_redirects
done
#若PPTP部分设置过，则下面不必在设置
sed -i 's/net.ipv4.ip_forward = 0/net.ipv4.ip_forward = 1/g' /etc/sysctl.conf
sysctl -p
service ipsec restart
ipsec verify
