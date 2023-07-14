#!/bin/bash

yum install httpd -y
echo "<h2> Terraform Certification Course - Java Home</h2>" > /var/www/html/index.html
systemctl enable httpd
systemctl start httpd