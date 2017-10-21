#!/usr/bin/env bash

 nginx  -t -c /root/blog/blog_server/config/nginx.conf
 nginx  -s quit -c /root/blog/blog_server/config/nginx.conf

echo "nginx: stop"
echo -e "===========================================\n\n"
