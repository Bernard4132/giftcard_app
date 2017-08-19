class CreateBitcoins < ActiveRecord::Migration[5.0]
  def change
    create_table :bitcoins do |t|
      t.string :cardamount
      t.integer :number
      t.integer :user_id
      t.string :bitcoinnumber
      t.boolean :terms

      t.timestamps
    end
  end
end
