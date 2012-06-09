class CurrentRecommendationsController < ApplicationController
  def index
    @weather = Forecast.new
  end
end
