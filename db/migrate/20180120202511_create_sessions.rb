class CreateSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :sessions do |t|
      t.date :start_time
      t.date :end_time
      t.money :hourly_rate
      t.boolean :repeat_weekly
      t.integer :user_id
      t.integer :course_id

      t.timestamps
    end
  end
end
