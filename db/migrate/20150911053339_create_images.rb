class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image
      t.integer :imagable_id
      t.string :imagable_type

      t.timestamps null: false
    end
  end
end
