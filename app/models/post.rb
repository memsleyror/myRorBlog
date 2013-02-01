class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :pics
  attr_accessible :body, :title
end
