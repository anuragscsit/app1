class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :member_id
      t.string :enrollment_no
      t.string :name
      t.string :contact
      t.text :adderss

      t.timestamps null: false
    end
  end
end
