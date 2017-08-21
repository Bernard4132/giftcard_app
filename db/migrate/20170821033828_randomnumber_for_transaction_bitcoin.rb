class RandomnumberForTransactionBitcoin < ActiveRecord::Migration[5.0]
  def change
  	add_column :bitcoins, :transactionid, :integer
  end
end
