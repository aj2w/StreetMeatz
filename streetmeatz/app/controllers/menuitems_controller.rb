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

  def create
    menuitem = Menuitem.new(params[:menuitem])
    menuitem.save
    redirect_to menuitem.vendors.first
  end

  def edit
    @menuitem = Menuitem.find(params[:id])
  end

  def update
    @menuitem = Menuitem.find(params[:id])
    @menuitem.update_attributes(params[:menuitem])
    redirect_to @menuitem
  end

  def destroy
    Menuitem.find(params[:id]).destroy
    redirect_to('/menuitems')
  end
end
