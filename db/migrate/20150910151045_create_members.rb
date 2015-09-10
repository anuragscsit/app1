class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.integer :library_member_id
      t.string :library_member_type

      t.timestamps null: false
    end
  end
end
