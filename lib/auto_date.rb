
Rails.configuration.to_prepare do
  require 'hooks/controller_issues_edit_before_save'
  require 'hooks/controller_issues_new_before_save'
  require 'hooks/controller_agile_boards_update_before_save'
end

module AutoDate
  Setting.default_issue_start_date_to_creation_date = false
end