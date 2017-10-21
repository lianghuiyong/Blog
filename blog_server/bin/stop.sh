#!/usr/bin/env bash

sudo nginx  -t -c /root/blog/blog_server/config/nginx.conf
sudo nginx  -s quit -c /root/blog/blog_server/config/nginx.conf

echo "nginx: stop"
echo -e "===========================================\n\n"
