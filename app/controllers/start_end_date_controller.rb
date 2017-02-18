class StartEndDateController < ApplicationController
  unloadable
  menu_item :auto_date

  layout 'admin'
  before_filter :require_admin

  START_DATE = 1
  END_DATE = 0

  def index
    @statuses = IssueStatus
    @start_dates = StartEndDate.where(state: START_DATE)
    @end_dates = StartEndDate.where(state: END_DATE)
  end

  def update_start

    IssueStatus.find_each do |status|
      if params[:start_settings].has_value?(status.id.to_s)
        temp_start_end_date = StartEndDate.find_by(state: START_DATE, status_id: status.id)
        if temp_start_end_date.nil?
          StartEndDate.create(state: START_DATE, status_id: status.id)
        end
      else
        temp_start_end_date = StartEndDate.find_by(state: START_DATE, status_id: status.id)
        unless temp_start_end_date.nil?
          temp_start_end_date.destroy
        end
      end
    end

    flash[:notice] = l(:notice_successful_update)
    redirect_to :action => 'index', :tab => params[:tab]
  end

  def update_end

    IssueStatus.find_each do |status|
      if params[:end_settings].has_value?(status.id.to_s)
        temp_start_end_date = StartEndDate.find_by(state: END_DATE, status_id: status.id)
        if temp_start_end_date.nil?
          StartEndDate.create(state: END_DATE, status_id: status.id)
        end
      else
        temp_start_end_date = StartEndDate.find_by(state: END_DATE, status_id: status.id)
        unless temp_start_end_date.nil?
          temp_start_end_date.destroy
        end
      end
    end


    flash[:notice] = l(:notice_successful_update)
    redirect_to :action => 'index', :tab => params[:tab]
  end



end