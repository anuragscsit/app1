class CreateBooksStudentLibraryStatuses < ActiveRecord::Migration
  def change
    create_table :books_student_library_statuses do |t|
      t.integer :student_library_status_id
      t.integer :book_id
    end
  end
end
