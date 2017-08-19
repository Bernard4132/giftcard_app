class Bitcoin < ApplicationRecord
	belongs_to :user
	has_many :photos
	accepts_nested_attributes_for :photos, :allow_destroy => true
end
