class StudentLibraryStatus < ActiveRecord::Base
  belongs_to :student
  belongs_to :book
end
