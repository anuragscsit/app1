class RemoveStudentFromMailToMembers < ActiveRecord::Migration
  def change
    remove_column :mail_to_members, :student_id, :integer
  end
end
