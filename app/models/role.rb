class Role < ActiveRecord::Base
  has_many :users
  attr_accessible :role_name, :role_id

  def hello
  	"Hello"
  end
end
