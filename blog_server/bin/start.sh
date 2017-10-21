#!/usr/bin/env bash

# 将api目录及其子目录皆设为任何人可执行
sudo chmod -R 777 /root/blog_server/web

sudo rm /root/blog_server/logs/*

ps -fe|grep nginx |grep -v grep
if [ $? -ne 0 ]
then
  nginx  -t -c /root/blog_server/config/nginx.conf
  nginx  -c /root/blog_server/config/nginx.conf
  echo "nginx: start"
else
  nginx  -t -c /root/blog_server/config/nginx.conf
  nginx  -s reload -c /root/blog_server/config/nginx.conf
  echo "nginx: reload"
fi
echo -e "===========================================\n\n"
sudo tail -f /root/blog_server/logs/error.log