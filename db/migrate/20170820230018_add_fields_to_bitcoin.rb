class AddFieldsToBitcoin < ActiveRecord::Migration[5.0]
  def change
  	add_column :bitcoins, :approved, :boolean, default: false
  	add_column :bitcoins, :paymentoptions, :string
  	add_column :bitcoins, :bitcointotal, :decimal, precision: 15, scale: 3
  	add_column :bitcoins, :mobilemtotal, :decimal, precision: 15, scale: 3
  end
end
