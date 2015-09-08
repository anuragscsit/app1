class RemoveSectionFromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :section_id, :integer
  end
end
