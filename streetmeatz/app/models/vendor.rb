class Vendor < ActiveRecord::Base
# Inserts relational aspects here

  acts_as_gmappable

  def gmaps4rails_address
    address
  end
end