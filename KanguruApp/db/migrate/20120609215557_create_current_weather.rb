class CreateCurrentWeather < ActiveRecord::Migration
  def change
    create_table :current_weathers do |t|
      t.integer :temperature
      t.integer :wind_speed
      t.string :wind_direction
      t.string :humidity
      t.string :condition
      t.text :json_data
      
      t.timestamps
    end
  end
end
