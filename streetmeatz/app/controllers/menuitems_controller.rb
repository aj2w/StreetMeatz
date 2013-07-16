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
    redirect_to '/menuitems'
  end


  def edit
    @menuitem = Menuitem.find(params[:id])
  end

  # def update
  #   @student = Student.find(params[:id])
  #   raise
  #   @student.update_attributes(params[:student])
  #   redirect_to @student
  # end

  def update
    @menuitem = Menuitem.find(params[:id])
    @menuitem.update_attributes(params[:menuitem])
    redirect_to @menuitem
  end

  def destroy
    menuitem = Menuitem.find(params[:id])
    menuitem.destroy
    redirect_to('/menuitems')
  end
end
