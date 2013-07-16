class Menuitem < ActiveRecord::Base
  attr_accessible :name, :description, :price
  has_and_belongs_to_many :vendors
end