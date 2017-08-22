class AddNewFieldsToBitcoin < ActiveRecord::Migration[5.0]
  def change
  	add_column :bitcoins, :mobilemoneyname, :string
  	add_column :bitcoins, :mobilemoneynumber, :string
  end
end
