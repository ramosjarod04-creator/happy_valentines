#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "--- Building Project ---"

# 1. Install dependencies
# The --break-system-packages flag is required to bypass the 'externally-managed-environment' error
python3.12 -m pip install -r requirements.txt --break-system-packages

# 2. Collect static files
# This creates the /var/task/staticfiles_build/ directory Django is looking for
python3.12 manage.py collectstatic --noinput --clear

echo "--- Build Finished ---"