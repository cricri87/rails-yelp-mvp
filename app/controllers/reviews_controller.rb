class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def show
    @review = Review.find(params[:id])

  end

  def create
    restaurant_id = params[:restaurant_id]
    @restaurant = Restaurant.find(restaurant_id)
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end

  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end

end
