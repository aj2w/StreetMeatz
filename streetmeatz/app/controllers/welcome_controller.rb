class WelcomeController < ApplicationController

  def index
    ## TO BE REMOVED AT SOME POINT ##
    @json = Vendor.all.to_gmaps4rails
    @vendors = Vendor.all
  end

end