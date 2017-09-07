class AddFieldToBitcoins < ActiveRecord::Migration[5.0]
  def change
  	add_column :bitcoins, :declined, :boolean, default: false
  end
end
