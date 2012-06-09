class CurrentRecommendationsController < ApplicationController
  def index
    if CurrentWeather.where("created_at > ?", 1.hour.ago).count > 0
      @weather = CurrentWeather.where("created_at > ?", 1.hour.ago).order("created_at DESC").limit(1)[0]
    else
      @weather = CurrentWeather.create
    end
  end
end
