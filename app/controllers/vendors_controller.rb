class VendorsController < ApplicationController

  def index
    if params[:search].present?
      @vendors = Vendor.near(params[:search], 5, :order => :distance)
      expires_in 3.minutes, public: true
      # NUMBER IS IN MILES
    else
      @vendors = Vendor.all
      expires_in 3.minutes, public: true
    end
    @json = @vendors.to_gmaps4rails
  end

  def show
    @vendor = Vendor.find(params[:id])
    expires_in 3.minutes, public: true
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
