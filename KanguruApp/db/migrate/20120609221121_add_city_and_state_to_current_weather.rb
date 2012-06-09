class AddCityAndStateToCurrentWeather < ActiveRecord::Migration
  def change
    add_column :current_weathers, :city, :string
    add_column :current_weathers, :state, :string
  end
end
