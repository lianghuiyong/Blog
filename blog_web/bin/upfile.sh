#!/usr/bin/env bash

scp /Users/huiyong/Documents/project/blog_web/index.html root@120.78.153.171:/root/blog_server/web
scp -r /Users/huiyong/Documents/project/blog_web/dist root@120.78.153.171:/root/blog_server/web

echo -e "\n==========================================="
echo "up: web!"
echo -e "===========================================\n"
