class EditAvailabilityColumns < ActiveRecord::Migration[5.1]
  def change
    remove_column :availabilities, :start_time
    remove_column :availabilities, :end_time
    add_column :availabilities, :day, :integer
  end
end
