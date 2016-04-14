nice -20 yum update -y

rpm -Uvh http://mirror.webtatic.com/yum/el7/epel-release.rpm;
rpm -Uvh http://mirror.webtatic.com/yum/el7/webtatic-release.rpm;
wget http://monitor.data2.com.br/centos/mariadb-repository.txt -O /etc/yum.repos.d/mariadb.repo
wget http://monitor.data2.com.br/centos/yum-nginx.txt -O /etc/yum.repos.d/nginx.repo

nice -20 yum -y remove Maria* maria* mysql*;nice -20 yum -y remove httpd*;nice -20 yum -y remove php*;

yum install openssl openssl-devel;
nice -20 yum -y install tcpdump;
nice -20 yum -y install gcc
nice -20 yum -y install libpcap
yum install -y wget perl zip unzip ftp;
yum install -y vsftpd htop nginx mariadb-server mariadb;
yum install -y php56w php56w-fpm php56w-mysql php56w-opcache php56w-common php56w-mysqli php56w-mbstring php56w-mcrypt php56w-mbstring php56w-gd php56w-curl php56w-common php56w-mcrypt php56w-bcmath php56w-dba php56w-devel php56w-embedded php56w-enchant php56w-imap php56w-pecl-memcache php56w-pspell php56w-snmp php56w-xmlrpc php56w-xml;
wget http://via220.com/instalador/centos_7/nginx.conf -O /etc/nginx/nginx.conf;
wget http://via220.com/instalador/centos_7/teste.conf -O /etc/nginx/conf.d/default.conf;
wget http://via220.com/instalador/centos_7/www.conf -O /etc/php-fpm.d/www.conf;
wget http://via220.com/instalador/centos_7/index.phptt -O /var/www/html/index.php;


yum install -y http://pkgs.repoforge.org/bwm-ng/bwm-ng-0.5-2.el6.rf.x86_64.rpm;
yum install -y http://pkgs.repoforge.org/iftop/iftop-1.0-0.pre3.el6.rf.x86_64.rpm;
yum -y install crontabs

#chmod 777 /etc/nginx/nginx.conf
#chmod 777 /etc/nginx/conf.d/teste.conf
#chmod 777 /etc/php-fpm.d/www.conf
#chmod 777 /var/www/html/index.php

systemctl start nginx;
systemctl start php-fpm;
systemctl start mysqld;
systemctl enable php-fpm;
systemctl enable nginx;
systemctl enable mysqld;

chkconfig nginx on
chkconfig php-fpm on
chkconfig vsftpd on
chkconfig mysqld on


mv /etc/sysctl.conf /etc/sysctl-original-data2.conf
wget 'http://monitor.data2.com.br/centos/sysctcl-agressive.conf' -O /etc/sysctl.conf


mysql_secure_installation;
