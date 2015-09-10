class CreateFaculties < ActiveRecord::Migration
  def change
    create_table :faculties do |t|
      t.string :name
      t.string :employee_id
      t.string :email
      t.string :contact_1
      t.string :contact_2

      t.timestamps null: false
    end
  end
end
