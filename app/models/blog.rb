class Blog < ApplicationRecord
	mount_uploader :blogimage, BlogimageUploader
end
