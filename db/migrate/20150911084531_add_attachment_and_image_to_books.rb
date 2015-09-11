class AddAttachmentAndImageToBooks < ActiveRecord::Migration
  def change
    add_column :books, :attachment, :string
    add_column :books, :image, :string
  end
end
