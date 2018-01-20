class CreateUniversities < ActiveRecord::Migration[5.1]
  def change
    create_table :universities do |t|
      t.string :name
      t.string :state
      t.string :city

      t.timestamps
    end
  end
end
