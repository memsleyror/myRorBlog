class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  attr_accessible :user_comment
  attr_accessible :user_id, :post_id
end
