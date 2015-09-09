class Course < ActiveRecord::Base
	has_many :sections
	has_many :batches
end
