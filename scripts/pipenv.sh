#!/bin/bash -xe

sudo chown root:nginx -R /var/www/html/SampleApp/
cd /var/www/html/SampleApp
/usr/local/bin/pipenv install
