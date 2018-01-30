class CreateAvailabilities < ActiveRecord::Migration[5.1]
  def change
    create_table :availabilities do |t|
      t.integer :user_id
      t.integer :course_id
      t.datetime :start
      t.datetime :end
      t.money :hourly_rate
      t.boolean :repeat_weekly
      t.timestamps
    end
  end
end
