class Pic < ActiveRecord::Base
  belongs_to :post
  attr_accessible :img
end
