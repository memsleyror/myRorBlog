class CreatePics < ActiveRecord::Migration
  def change
    create_table :pics do |t|
      t.string :img
      t.references :post

      t.timestamps
    end
    add_index :pics, :post_id
  end
end
