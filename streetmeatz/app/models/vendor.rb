class Vendor < ActiveRecord::Base
# Inserts relational aspects here

  acts_as_gmappable :check_process => false

  def gmaps4rails_address
    address
  end
end