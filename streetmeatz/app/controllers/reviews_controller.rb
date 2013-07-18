class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    if @current_user
      review = Review.new(params[:review])
      review.save
       redirect_to review.vendor
    else
      redirect_to('/reviews')
    end
  end

##CONSIDER DELETING THE BELOW ####
  def edit
    @review = Review.find(params[:id])
  end

  def update
    if @current_user && @current_user.is_admin
    @review = Review.find(params[:id])
    @review.update_attributes(params[:review])
    redirect_to @review
      else
      redirect_to('/')
  end
end
end
