import os
from django.core.wsgi import get_wsgi_application
from whitenoise import WhiteNoise
from pathlib import Path

# Get the base directory
BASE_DIR = Path(__file__).resolve().parent.parent

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'valentinesite.settings')

application = get_wsgi_application()

# ADD THIS LINE: It forces WhiteNoise to find your photos directly
application = WhiteNoise(application, root=os.path.join(BASE_DIR, 'static'))

# Vercel needs this 'app' variable
app = application