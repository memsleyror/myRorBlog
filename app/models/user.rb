class User < ActiveRecord::Base
  belongs_to :role
  has_many :posts
  has_many :comments
  attr_accessible :email, :first_name, :last_name, :profile_pic, :string
end
