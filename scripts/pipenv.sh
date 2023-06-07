#!/bin/bash -xe

chown nginx:nginx -R /var/www/html/SampleApp/
cd /var/www/html/SampleApp
/usr/local/bin/pipenv install
