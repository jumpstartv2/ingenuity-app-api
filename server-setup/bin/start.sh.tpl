#! /bin/bash

cd /opt/{project_folder}/dashboard-metrics
source /opt/{project_folder}/env/bin/activate
exec /opt/{project_folder}/env/bin/gunicorn conf.wsgi_dev \
              -b unix:/tmp/{program_name}.sock \
              -u developer \
              -g developer \
              -w 2 \
              --log-file=/opt/{project_folder}/logs/supervisor.log
