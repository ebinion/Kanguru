class Forecast
  # This model will just pull a forecast. I may actually hook the data up to a database later.
  
  require 'open-uri'
  require 'json'
  
  attr_accessor :forecast_json
  
  def initialize(city = "Chicago", state = "IL")
    @forecast_json = JSON.parse(open("http://api.wunderground.com/api/010d8d7c9ed487d9/geolookup/hourly/conditions/forecast/q/#{state}/#{city}.json").read)
  end
  
  def current_temp
    @forecast_json["current_observation"]["temp_f"]
  end
  
  def current_wind
    @forecast_json["current_observation"]["wind_mph"]
  end
  
  def current_humidity
    @forecast_json["current_observation"]["relative_humidity"]
  end
  
  def current_conditions
    @forecast_json["current_observation"]["weather"]
  end
end
