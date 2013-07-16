class User < ActiveRecord::Base
  attr_accessible :name, :password, :is_admin

  has_many :reviews
  has_many :vendors
end
