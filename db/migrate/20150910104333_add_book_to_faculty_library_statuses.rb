class AddBookToFacultyLibraryStatuses < ActiveRecord::Migration
  def change
    add_column :faculty_library_statuses, :book_id, :integer
  end
end
