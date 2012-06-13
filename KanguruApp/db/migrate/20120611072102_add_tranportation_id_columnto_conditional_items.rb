class AddTranportationIdColumntoConditionalItems < ActiveRecord::Migration
  def change
    add_column :conditional_items, :transportation_id, :integer
    remove_column :conditional_items, :condition
  end
end
