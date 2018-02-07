class AddHourlyRateToCompletedCourse < ActiveRecord::Migration[5.1]
  def change
    add_column :completed_courses, :hourly_rate, :money
  end
end
