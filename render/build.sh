#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset

pip install -r requirements/production.txt
# python manage.py collectstatic --noinput
python manage.py migrate
