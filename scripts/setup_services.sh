#!/bin/bash -xe
## Install uWSGI as a systemd service, enable it to run at boot, then start it
cp /var/www/html/SampleApp/sample-app.uwsgi.service /etc/systemd/system/mywebapp.uwsgi.service
mkdir -p /var/log/uwsgi
sudo chown root:nginx /var/log/uwsgi
systemctl enable mywebapp.uwsgi.service

## Copy the nginx config file, then ensure nginx starts at boot, and restart it to load the config
cp /var/www/html/SampleApp/nginx-app.conf /etc/nginx/conf.d/nginx-app.conf
mkdir -p /var/log/nginx
sudo chown root:nginx /var/log/nginx
systemctl enable nginx.service
