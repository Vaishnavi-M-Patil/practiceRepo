yum install httpd -y
systemctl start httpd
systemctl enable httpd

echo "<h1>Hello World!</h1>" > /var/www/html/index.html