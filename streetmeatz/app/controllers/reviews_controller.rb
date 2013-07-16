class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
    @vendors = Vendor.all
  end

  def create
    review = Review.new
    review.text = params[:text]
    review.rating = params[:rating]

    vendor = Vendor.find(params[:vendor])
    vendor.reviews << review
    vendor.save
    review.save
    redirect_to('/reviews')
  end


end

