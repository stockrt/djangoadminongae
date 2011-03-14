from django.conf.urls.defaults import *

handler500 = 'djangotoolbox.errorviews.server_error'

# Django Admin
from django.contrib import admin
admin.autodiscover()

# Search for "dbindexes.py" in all installed apps
import dbindexer
dbindexer.autodiscover()

# Search for "search_indexes.py" in all installed apps
import search
search.autodiscover()

urlpatterns = patterns('',
    # Warmup
    ('^_ah/warmup$', 'djangoappengine.views.warmup'),

    # Index
    (r'^$', 'django.views.generic.simple.direct_to_template', {'template': 'home.html'}),

    # Django Admin
    (r'^admin/', include(admin.site.urls)),
)
