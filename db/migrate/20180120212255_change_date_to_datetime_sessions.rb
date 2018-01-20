class ChangeDateToDatetimeSessions < ActiveRecord::Migration[5.1]
  def change
    change_column :sessions, :start_time, :timestamp
    change_column :sessions, :end_time, :timestamp
  end
end
