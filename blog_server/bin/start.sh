#!/usr/bin/env bash

# 将api目录及其子目录皆设为任何人可执行
sudo chmod -R 777 /root/blog/blog_web/*

ps -fe|grep nginx |grep -v grep
if [ $? -ne 0 ]
then
  /usr/local/openresty/nginx/sbin/nginx  -t -c /root/blog/blog_server/config/nginx.conf
  /usr/local/openresty/nginx/sbin/nginx  -c /root/blog/blog_server/config/nginx.conf
  echo "nginx: start"
else
  /usr/local/openresty/nginx/sbin/nginx  -t -c /root/blog/blog_server/config/nginx.conf
  /usr/local/openresty/nginx/sbin/nginx  -s reload -c /root/blog/blog_server/config/nginx.conf
  echo "nginx: reload"
fi
echo -e "===========================================\n\n"
sudo tail -f /root/blog/blog_server/logs/error.log