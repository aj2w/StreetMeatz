class Vendor < ActiveRecord::Base
  attr_accessible :name, :address, :menuitem_ids, :twitter
  has_and_belongs_to_many :menuitems
  has_many :reviews

  validates :name, :address, presence: true

  ### For geocoder ###
  geocoded_by :address
  # after_validation :geocode, :if => :address_changed?

  ### For gmaps4rails functionality ###
  acts_as_gmappable :check_process => false
  @markers = Vendor.all.to_gmaps4rails

  def gmaps4rails_address
    address
  end

  def gmaps4rails_infowindow
    "#{self.name}, #{self.address}"
  end

end