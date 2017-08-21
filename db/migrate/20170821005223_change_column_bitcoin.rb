class ChangeColumnBitcoin < ActiveRecord::Migration[5.0]
  def change
  	change_column :bitcoins, :bitcointotal, :decimal, precision: 15, scale: 12
  	change_column :bitcoins, :mobilemtotal, :decimal, precision: 15, scale: 12
  end
end
