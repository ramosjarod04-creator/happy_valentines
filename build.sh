#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "--- Building Project ---"

# 1. Install dependencies
# Using --break-system-packages is often required in Vercel's new managed environment
python3.12 -m pip install -r requirements.txt --break-system-packages

# 2. Collect static files
# This creates the 'staticfiles' folder your site is missing
python3.12 manage.py collectstatic --noinput --clear

echo "--- Build Finished ---"