class Review < ActiveRecord::Base
  attr_accessible :text, :rating
  belongs_to :vendor
  belongs_to :user
end