class CreateStartEndDates < ActiveRecord::Migration
  def change
    create_table :start_end_dates do |t|
      t.integer :state
      t.integer :status_id
    end
  end
end
