class CreateTransportations < ActiveRecord::Migration
  def change
    create_table :transportations do |t|
      t.string :image
      t.string :name
      t.string :condition

      t.timestamps
    end
  end
end
