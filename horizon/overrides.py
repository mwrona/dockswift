from django.utils.translation import ugettext_lazy as _

import horizon

# Rename "User Settings" to "User Options"
admin = horizon.get_dashboard("admin")
admin.name = _("Gestion")

projects_dashboard = horizon.get_dashboard("project")
projects_dashboard.name = _("Projet")
instances_panel = projects_dashboard.get_panel("instances")
projects_dashboard.unregister(instances_panel.__class__)

images_panel = projects_dashboard.get_panel("images")
projects_dashboard.unregister(images_panel.__class__)

access_panel = projects_dashboard.get_panel("access_and_security")
projects_dashboard.unregister(access_panel.__class__)
