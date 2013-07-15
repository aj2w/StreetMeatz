class VendorsController < ApplicationController


  def index
    @vendors = Vendor.all
    @json = Vendor.all.to_gmaps4rails
  end

  def show
    @vendor = Vendor.find(params[:id])
    @json = Vendor.find(params[:id]).to_gmaps4rails
  end

  def new
    @vendor = Vendor.new

end
