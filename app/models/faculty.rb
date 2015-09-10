class Faculty < ActiveRecord::Base
	has_many :members, as: :library_member
	has_many :faculty_library_statuses
	mount_uploader :image, ImageUploader
end
