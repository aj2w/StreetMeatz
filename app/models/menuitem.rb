class Menuitem < ActiveRecord::Base
  attr_accessible :name, :description, :price, :image, :vendor_ids
  has_and_belongs_to_many :vendors

  validates :name, presence: true
end