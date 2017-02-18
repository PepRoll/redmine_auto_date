Auto Date plugin
=================

This redmine plugin for automatically stamped the start and end date of issues

__Install plugin__:

```rake redmine:plugins:migrate RAILS_ENV=production```

__Unisatll plugin__:

1. ```rake redmine:plugins:migrate NAME=auto_date  VERSION=0 RAILS_ENV=production```
2. Remove the plugin from the plugins folder: `#{RAILS_ROOT}/plugins`