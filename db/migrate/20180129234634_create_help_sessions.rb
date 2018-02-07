class CreateHelpSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :help_sessions do |t|
      t.integer :user_id
      t.integer :tutor_id
      t.integer :course_id
      t.boolean :user_started
      t.boolean :tutor_started
      t.datetime :started_at
      t.boolean :user_ended
      t.boolean :tutor_ended
      t.datetime :ended_at
      t.datetime :start
      t.datetime :end
      t.boolean :cancelled
      t.integer :cancelled_by
      t.string :message

      t.timestamps
    end
  end
end
