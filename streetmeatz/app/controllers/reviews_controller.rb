class ReviewsController < ApplicationController

  def index
    #CONSIDER DELETING
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    review = Review.new(params[:review])
    review.save
    redirect_to('/vendors/:vendor_id')
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

