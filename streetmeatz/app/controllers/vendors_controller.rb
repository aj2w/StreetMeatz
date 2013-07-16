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

  def create
    vendor = Vendor.new(params[:vendor])
    vendor.save
    redirect_to('/vendors')
  end

  def edit
    @vendor = Vendor.find(params[:id])
  end

  def update
    @vendor = Vendor.find(params[:id])
    @vendor.update_attributes(params[:vendor])
    redirect_to @vendor
  end

  def destroy
    Vendor.find(params[:id]).destroy
    redirect_to "/vendors"
  end

end
