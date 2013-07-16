class MenuitemsController < ApplicationController

  def index
    @menuitems = Menuitem.all
  end

  def show
    @menuitem = Menuitem.find(params[:id])
  end

  def new
    @menuitem = Menuitem.new
  end

  #  def create
  #   student = Student.new(params[:student])
  #   student.save
  #   redirect_to @student
  # end

  def create
    menuitem = Menuitem.new(params[:menuitem])

    # menuitem.name = params[:name]
    # menuitem.description = params[:description]
    # menuitem.price = params[:price]
    # menuitem.image = params[:image]
    menuitem.save

    # vendor = Vendor.find(params[:vendor])
    # vendor.menuitems << menuitem
    redirect_to('/menuitems')
  end

  def edit
    @menuitem = Menuitem.find(params[:id])
    @vendors = Vendor.all
    name = params[:name]
    description = params[:description]
    price = params[:price]
    image = params[:image]
  end

  def update
    menuitem = Menuitem.find(params[:id])
    menuitem.name = params[:name]
    menuitem.description = params[:description]
    menuitem.price = params[:price]
    menuitem.image = params[:image]
    menuitem.save
    redirect_to "menuitems/#{menuitem.id}"
  end

  def destroy
    menuitem = Menuitem.find(params[:id])
    menuitem.destroy
    redirect_to('/menuitems')
  end
end
