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
    # name = params[:name]
    # address = params[:address]
    # hours = params[:hours]
    # phone = params[:phone]
    # twitter = params[:twitter]
    @vendor = Vendor.new
  end

  def create
    vendor = Vendor.new
    vendor.name = params[:name]
    vendor.address = params[:address]
    vendor.hours = params[:hours]
    vendor.phone = params[:phone]
    vendor.twitter = params[:twitter]
    vendor.save
    redirect_to('/vendors')
  end

  def edit
    @vendor = Vendor.find(params[:id])
    name = params[:name]
    address = params[:address]
    hours = params[:hours]
    phone = params[:phone]
    twitter = params[:twitter]
  end

  def update
    vendor = Vendor.find(params[:id])
    vendor.name = params[:name]
    vendor.address = params[:address]
    vendor.hours = params[:hours]
    vendor.phone = params[:phone]
    vendor.twitter = params[:twitter]
    vendor.save
    redirect_to "/vendors/#{vendor.id}"
  end


end
