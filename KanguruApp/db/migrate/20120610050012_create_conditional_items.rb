class CreateConditionalItems < ActiveRecord::Migration
  def change
    create_table :conditional_items do |t|
      t.string :name
      t.string :condition
      t.string :image

      t.timestamps
    end
  end
end
