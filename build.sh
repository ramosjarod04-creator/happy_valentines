#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "--- Building Project ---"

# 1. Install dependencies using the specific python version
python3.12 -m pip install -r requirements.txt

# 2. Collect static files into the specific folder Vercel is looking for
# This matches the /var/task/staticfiles_build/ path from your error
python3.12 manage.py collectstatic --noinput --clear

echo "--- Build Finished ---"