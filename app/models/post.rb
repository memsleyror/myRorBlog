class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :pics
  attr_accessible :body, :title, :comments_attributes
  attr_accessible :user_id, :post_id
  accepts_nested_attributes_for :comments, :allow_destroy => true

end
