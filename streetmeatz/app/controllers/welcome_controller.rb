class WelcomeController < ApplicationController

  def index
    @json = Vendor.all.to_gmaps4rails
    @vendors = Vendor.all
  end

end