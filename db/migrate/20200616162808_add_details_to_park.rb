class AddDetailsToPark < ActiveRecord::Migration[6.0]
  def change
    add_column :parks, :average_masks, :float
    add_column :parks, :average_distancing, :float
    add_column :parks, :average_not_crowded, :float
  end
end
