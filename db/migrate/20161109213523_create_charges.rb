class CreateCharges < ActiveRecord::Migration[5.0]
  def change
    create_table :charges do |t|
      t.string :Product
      t.integer :Amount
      t.string :Card_type
      t.integer :Card_last4
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
