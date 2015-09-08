class Student < ActiveRecord::Base
	belongs_to :section
	has_many :student_library_statuses
end
