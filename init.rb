
require 'redmine'
require 'auto_date'

Redmine::Plugin.register :auto_date do
  name 'Auto Date plugin'
  author 'DonnerJack'
  description 'This redmine plugin for automatically stamped the start and end date of issues'
  version '0.0.1'
  author_url 'mailto:donnerjack@protonmail.ru'

  requires_redmine :version_or_higher => '3.0'

  menu :admin_menu, :auto_date, {:controller => 'start_end_date', :action => 'index'}, :caption => :label_auto_date

end
