class WelcomeController < ApplicationController

  def index
    ## TO BE REMOVED AT SOME POINT ##
    @json = Vendor.all.to_gmaps4rails
    @vendors = Vendor.all
    expires_in 3.minutes, public: true
  end

end