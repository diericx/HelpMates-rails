class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :reviewer_user_id
      t.integer :rating
      t.string :notes

      t.timestamps
    end
  end
end
