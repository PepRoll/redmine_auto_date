module MyContract
  class Hooks < Redmine::Hook::ViewListener
    def controller_agile_boards_update_before_save(context={})

      issue = context[:issue]
      unless StartEndDate.find_by(state: 1, status_id: issue.status_id).nil?
        if issue.start_date.nil?
          issue.start_date = Date.today
        end
        issue.due_date = nil
      end

      unless StartEndDate.find_by(state: 0, status_id: issue.status_id).nil?
        issue.due_date = Date.today
      else
        issue.due_date = nil
      end

    end
  end
end