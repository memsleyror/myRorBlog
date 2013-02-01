class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :user_comment
      t.references :user
      t.references :post

      t.timestamps
    end
    add_index :comments, :user_id
    add_index :comments, :post_id
  end
end
