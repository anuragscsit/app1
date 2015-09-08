class AddBookToStudentLibraryStatuses < ActiveRecord::Migration
  def change
    add_column :student_library_statuses, :book_id, :integer
  end
end
