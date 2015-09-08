class AddColumnsToStudentLibraryStatuses < ActiveRecord::Migration
  def change
    add_column :student_library_statuses, :max_allocation_of_books, :integer
    add_column :student_library_statuses, :min_allocation_of_books, :integer
    add_column :student_library_statuses, :returned_before, :string
    add_column :student_library_statuses, :returned_after, :string
    add_column :student_library_statuses, :fine_charge, :integer
  end
end
