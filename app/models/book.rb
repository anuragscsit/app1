class Book < ActiveRecord::Base
	has_many :student_library_statuses
	has_many :faculty_library_statuses
	mount_uploader :attachment, AttachmentUploader
	mount_uploader :image, ImageUploader
	validates :name, :presence => true
end
