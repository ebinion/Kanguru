class CurrentWeather < ActiveRecord::Base
  # This model will just pull a forecast. I may actually hook the data up to a database later.
  attr_accessible :temperature, :wind_speed, :humidity, :condition, :wind_direction, :city, :state, :json_data
  
  require 'open-uri'
  require 'json'
  
  attr_accessor :forecast_json
  
  before_validation :import_data
  
  def import_data
    # Should allow for cases of entered data
    self.city = "Chicago"
    self.state = "IL"
    
    self.json_data = open("http://api.wunderground.com/api/010d8d7c9ed487d9/geolookup/hourly/conditions/forecast/q/#{state}/#{city}.json").read
    
    @forecast_json = JSON.parse(json_data)
    
    self.temperature = @forecast_json["current_observation"]["temp_f"].to_i
    self.wind_speed = @forecast_json["current_observation"]["wind_mph"].to_i
    self.humidity = @forecast_json["current_observation"]["relative_humidity"]
    self.condition = @forecast_json["current_observation"]["weather"]
    self.wind_direction = @forecast_json["current_observation"]["wind_dir"]
  end
  
end
