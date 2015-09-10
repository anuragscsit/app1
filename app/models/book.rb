class Book < ActiveRecord::Base
	has_many :student_library_statuses
	has_many :faculty_library_statuses
end
