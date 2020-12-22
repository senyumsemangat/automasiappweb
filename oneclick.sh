apt-get update
apt-get install apache2 php php-mysql mysql-server git -y


mysql -u root -pRiani28. <<EOFMYSQL
create user 'devopscilsy'@'localhost' identified by '1234567890';
grant all privileges on *.* to 'devopscilsy'@'localhost';
\q
EOFMYSQL

mysql -u devopscilsy -p1234567890 <<EOFMYSQL
create database dbsosmed;
show databases;
\q
EOFMYSQL

git clone https://github.com/senyumsemangat/appweb.git

rm /var/www/html/index.html
cp -r /root/appweb/* /var/www/html
cd /var/www/html
mysql -u devopscilsy -p1234567890 dbsosmed < dump.sql
service apache2 restart





