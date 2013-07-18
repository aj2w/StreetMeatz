class ReviewsController < ApplicationController

  def index
    #redirect_to request.referrer
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

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @review.update_attributes(params[:review])
    redirect_to @review
  end
end

