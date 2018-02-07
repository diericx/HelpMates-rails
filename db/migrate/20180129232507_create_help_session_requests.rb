class CreateHelpSessionRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :help_session_requests do |t|
      t.integer :user_id
      t.integer :tutor_id
      t.integer :course_id
      t.datetime :start
      t.datetime :end
      t.boolean :accepted
      t.boolean :denied
      t.integer :denied_by
      t.string :message

      t.timestamps
    end
  end
end
