class FacultyLibraryStatus < ActiveRecord::Base
  belongs_to :faculty
  belongs_to :book
end
