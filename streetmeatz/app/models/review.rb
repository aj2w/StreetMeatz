class Review < ActiveRecord::Base
  attr_accessible :text, :rating, :vendor_id, :user_id
  belongs_to :vendor
  belongs_to :user
end