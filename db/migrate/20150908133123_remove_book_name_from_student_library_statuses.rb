class RemoveBookNameFromStudentLibraryStatuses < ActiveRecord::Migration
  def change
    remove_column :student_library_statuses, :book_name, :string
  end
end
