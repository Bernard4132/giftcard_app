class AddMmnumberToBitcoin < ActiveRecord::Migration[5.0]
  def change
  	  add_column :bitcoins, :mmnumber, :string
  end
end
