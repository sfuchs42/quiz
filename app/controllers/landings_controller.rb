class LandingsController < ApplicationController
  def index
  	@landing = Landing.order("RANDOM()").first
  end

  def new
  	@landing = Landing.new
  end

  def create
  	Landing.create(landing_params)
  	redirect_to root_path
  end

  private

  def landing_params
  	params.require(:landing).permit(:quote, :author)
  end
end
