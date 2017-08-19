class Photo < ApplicationRecord
	belongs_to :bitcoin
	mount_uploader :gcpicture, GcpictureUploader

end
