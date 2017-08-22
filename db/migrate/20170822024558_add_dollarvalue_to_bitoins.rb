class AddDollarvalueToBitoins < ActiveRecord::Migration[5.0]
  def change
  	add_column :bitcoins, :dollarvalue, :decimal, precision: 15, scale: 3
  end
end
