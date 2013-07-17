class User < ActiveRecord::Base
  attr_accessible :name, :password, :is_admin

  has_many :reviews
  has_many :vendors

  validates :name, :password, :is_admin, presence: true
  validates :name, uniqueness: true
  validates :password, length: { minimum: 8 }

end
