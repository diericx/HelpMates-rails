class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.integer :from_user_id
      t.integer :to_user_id
      t.integer :help_session_id
      t.money :amount
      t.money :tip
      t.boolean :completed
      t.string :proof

      t.timestamps
    end
  end
end
