class CreateStudentLibraryStatuses < ActiveRecord::Migration
  def change
    create_table :student_library_statuses do |t|
      t.date :issue_date
      t.date :submission_date
      t.date :submitted_on
      t.string :book_name
      t.references :student, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
