#!/usr/bin/env bash

USER_ID=$(id -u)

if [ "$USER_ID" -ne 0 ]; then
  echo you should run your sript as sudo or root user
  exit 1
  fi

echo Frontend component

echo -e "\e[32m installing niginx\e[0m"
yum install nginx -y
# shellcheck disable=SC2181
if [ $? -eq 0 ]; then
  echo -e "\e[36m successfully installed\e[0m"
  else
    echo -e Failed
    exit 2
    fi

echo -e "\e[36m cleanup old nginx and extractive new downloaded archive\e[0m"

curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip"

 rm -rf/usr/share/nginx/html/*
 cd /usr/share/nginx/html
 unzip /tmp/frontend.zip
 mv frontend-main/* .
 mv static/* .
 rm -rf frontend-main README.md
 mv localhost.conf /etc/nginx/default.d/roboshop.conf
if [ $? -eq 0 ]; then
  echo -e "\e[32m successful\e[0m"
  else
    echo -e "\e[33m Failed\e[0m"
    exit 2
    fi
 echo -e "\e[32m stating nginx\e[0m"
systemctl restart nginx
if [ $? -eq 0 ]; then
  echo -e "\e[32m successful\e[0m"
  else
    echo -e "\e[33m Failed\e[0m"
    exit 2
    fi

systemctl enable nginx