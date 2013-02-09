class MyNewMigration < ActiveRecord::Migration
  def up
  	change_column :user, :email, :null=>false, :default=>""
  end

  def down
  end
end
