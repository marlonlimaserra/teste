yum install -y wget perl zip unzip ftp epel-release;
yum install -y vsftpd htop nginx mariadb-server mariadb;
yum install -y php php-fpm php-mysql php-opcache php-common php-mysqli php-mbstring php-mbstring php-gd php-curl php-common php-mcrypt php-bcmath php-dba php-devel php-embedded php-enchant php-imap php-pecl-memcache php-pspell php-snmp php-xmlrpc php-xml;
wget http://via220.com/instalador/centos_7/nginx.conf && mv nginx.conf -f /etc/nginx/nginx.conf;
wget http://via220.com/instalador/centos_7/teste.conf && mv teste.conf -f /etc/nginx/conf.d/teste.conf;
wget http://via220.com/instalador/centos_7/www.conf && mv www.conf -f /etc/php-fpm.d/www.conf;
wget http://via220.com/instalador/centos_7/index.phptt && mv index.phptt -f /var/www/html/index.php;
chmod 777 /etc/nginx/nginx.conf
chmod 777 /etc/nginx/conf.d/teste.conf
chmod 777 /etc/php-fpm.d/www.conf
chmod 777 /var/www/html/index.php
systemctl start nginx;
systemctl start php-fpm;
systemctl start mariadb;
systemctl enable php-fpm;
systemctl enable nginx;
systemctl enable mariadb;
mysql_secure_installation;
