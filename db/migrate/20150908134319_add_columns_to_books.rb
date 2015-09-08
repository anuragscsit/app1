class AddColumnsToBooks < ActiveRecord::Migration
  def change
    add_column :books, :total, :integer
    add_column :books, :available, :integer
    add_column :books, :issued, :integer
  end
end
