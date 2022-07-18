#!/bin/bash
killall nginx &>/dev/null
yum install gcc openssl-devel pcre-devel -y &>/dev/null
tar -zxf /root/nginx-1.12.2.tar.gz -C /var/local/ &>/dev/null
cd /var/local/nginx-1.12.2/
./configure &>/dev/null && make &>/dev/null && make install &>/dev/null
ls /usr/local/nginx/sbin/nginx &>/dev/null
[ $? -eq 0 ] && echo "安装成功"
/usr/local/nginx/sbin/nginx
curl 127.0.0.1 &>/dev/null
[ $? -eq 0 ] && echo "运行成功"
