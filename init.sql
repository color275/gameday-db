create database ecommerce;
CREATE USER  appuser@'%' IDENTIFIED WITH mysql_native_password BY 'Appuser12#$';
GRANT ALL PRIVILEGES ON ecommerce.* to appuser@"%";
