class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :title1
      t.string :title2
      t.string :subject
      t.integer :university_id

      t.timestamps
    end
  end
end
