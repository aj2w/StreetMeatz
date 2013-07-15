class VendorsController < ApplicationController


  def index
    @vendors = Vendor.all
    @json = Vendor.all.to_gmaps4rails
  end

end
