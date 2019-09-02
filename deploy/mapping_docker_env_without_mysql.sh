#!/usr/bin/env bash

sed -e "s/\${APP_HTTP_PORT}/${DEV_HTTP_PORT}/g;
             s/\${APP_HTTPS_PORT}/${DEV_HTTPS_PORT}/g;
             s/\${APP_REDIS_PORT}/${DEV_REDIS_PORT}/g;"  ./deploy/docker-compose_with_mysql_as_shared_service.dev.tpl.yml > ./docker-compose.yml

sed -e "s/\${APP_MYSQL_PASSWORD}/${DEV_SHARED_MYSQL_PASSWORD}/g;
 s/\${APP_MYSQL_DATABASE}/${DEV_MYSQL_DATABASE}/g;
 s/\${APP_MAILGUN_DOMAIN}/${DEV_MAILGUN_DOMAIN}/g;
 s/\${APP_MYSQL_PORT}/3306/g;
 s/\${APP_MYSQL_HOST}/mysql/g;
 s/\${APP_MAILGUN_SECRET}/${DEV_MAILGUN_SECRET}/g;
 s/\${APP_BUGSNAG_API_KEY}/${DEV_BUGSNAG_API_KEY}/g;
 s/\${APP_CAPTCHA_SITE_KEY}/${DEV_CAPTCHA_SITE_KEY}/g;
 s/\${APP_CAPTCHA_SECRET_KEY}/${DEV_CAPTCHA_SECRET_KEY}/g;"  ./deploy/.env.dist.deploy > ./deploy/.env.dist
