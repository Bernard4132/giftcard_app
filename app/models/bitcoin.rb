class Bitcoin < ApplicationRecord
	markable_as :confirm
	belongs_to :user
	has_many :photos
	accepts_nested_attributes_for :photos, :allow_destroy => true
	before_create :bitcoin_total
	before_create :mobilemoney_total
	before_create :generate_transaction


	private

	def bitcoin_total
		self.bitcointotal = (self.cardamount.to_i * 0.6) * self.number.to_i * 0.00025
	end

	def mobilemoney_total
		self.mobilemtotal = (self.cardamount.to_i * 0.6) * self.number.to_i * 4.42
	end

	def generate_transaction
       self.transactionid = rand(1011..9909)
	end
end
