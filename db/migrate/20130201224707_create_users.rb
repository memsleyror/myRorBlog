class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :string
      t.string :profile_pic
      t.references :role

      t.timestamps
    end
    add_index :users, :role_id
  end
end
