#!/usr/bin/env bash

# 将api目录及其子目录皆设为任何人可执行
sudo chmod -R 777 /root/blog/blog_web/*

ps -fe|grep nginx |grep -v grep
if [ $? -ne 0 ]
then
  sudo nginx  -t -c /root/blog/blog_server/config/nginx.conf
  sudo nginx  -c /root/blog/blog_server/config/nginx.conf
  echo "nginx: start"
else
  sudo nginx  -t -c /root/blog/blog_server/config/nginx.conf
  sudo nginx  -s reload -c /root/blog/blog_server/config/nginx.conf
  echo "nginx: reload"
fi
echo -e "===========================================\n\n"
sudo tail -f /root/blog/blog_server/logs/error.log