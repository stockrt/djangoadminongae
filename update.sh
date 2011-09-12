#!/usr/bin/env bash

temp_dir="/tmp/djangoappengine_bootstrap"

rm -rf autoload
rm -rf dbindexer
rm -rf django
rm -rf djangoappengine
rm -rf djangotoolbox
rm -rf permission_backend_nonrel
rm -rf search
rm -rf templates

cp -a $temp_dir/autoload .
cp -a $temp_dir/dbindexer .
cp -a $temp_dir/django .
cp -a $temp_dir/djangoappengine .
cp -a $temp_dir/djangotoolbox .
cp -a $temp_dir/permission_backend_nonrel .
cp -a $temp_dir/search .
cp -a $temp_dir/templates .

cat $temp_dir/__init__.py > __init__.py
cat $temp_dir/indexes.py > indexes.py
cat $temp_dir/manage.py > manage.py
cat $temp_dir/settings.py > settings.py
cat $temp_dir/urls.py > urls.py

vimdiff app.yaml /tmp/djangoappengine_bootstrap/app.yaml
vimdiff cron.yaml /tmp/djangoappengine_bootstrap/cron.yaml
vimdiff index.yaml /tmp/djangoappengine_bootstrap/index.yaml
