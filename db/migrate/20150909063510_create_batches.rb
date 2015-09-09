class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
      t.string :year
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
