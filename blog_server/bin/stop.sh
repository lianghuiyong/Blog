#!/usr/bin/env bash

sudo nginx  -t -c /Users/huiyong/Documents/project/blog_server/config/nginx.conf
sudo nginx  -s quit -c /Users/huiyong/Documents/project/blog_server/config/nginx.conf

echo "nginx stop"
echo -e "===========================================\n\n"
tail -f /usr/local/Cellar/openresty/1.11.2.5/nginx/logs/error.log
