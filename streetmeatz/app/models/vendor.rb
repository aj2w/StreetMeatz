class Vendor < ActiveRecord::Base
  has_and_belongs_to_many :menuitems

  acts_as_gmappable :check_process => false

  def gmaps4rails_address
    address
  end
end