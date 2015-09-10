class CreateFacultyLibraryStatuses < ActiveRecord::Migration
  def change
    create_table :faculty_library_statuses do |t|
      t.string :issue_date
      t.string :submission_date
      t.string :submitted_on
      t.references :faculty, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
