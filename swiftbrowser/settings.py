""" Settings for Django project """
import os

SESSION_ENGINE = 'django.contrib.sessions.backends.signed_cookies'

USE_L10N = True
USE_TZ = True

TEMPLATE_LOADERS = (
    'django.template.loaders.filesystem.Loader',
    'django.template.loaders.app_directories.Loader',
)

PROJECT_PATH = os.path.realpath(os.path.dirname(__file__))
TEMPLATE_DIRS = (os.path.join(PROJECT_PATH, 'templates'),)

MIDDLEWARE_CLASSES = (
    'django.middleware.common.CommonMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.http.ConditionalGetMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
)

ROOT_URLCONF = 'swiftbrowser.urls'

INSTALLED_APPS = (
    'django.contrib.sessions',
    'django.contrib.staticfiles',
    'swiftbrowser',
)

IPADDRESS = os.getenv('IPADDRESS', "localhost")

SWIFT_AUTH_URL = "http://%s:5000/v2.0/" % IPADDRESS
SWIFT_AUTH_VERSION = 2  # 2 for keystone
STORAGE_URL = "http://%s:8080/v1/" % IPADDRESS
#BASE_URL = "http://%s:8000" % IPADDRESS # default if using built-in runserver
SWAUTH_URL = "http://%s:8080/auth/v2" % IPADDRESS

TIME_ZONE = 'Europe/Berlin'
LANGUAGE_CODE = 'de-de'
SECRET_KEY = 'DONT_USE_THIS_IN_PRODUCTION'
STATIC_URL = "http://cdnjs.cloudflare.com/ajax/libs/"

ALLOWED_HOSTS = ['*']
