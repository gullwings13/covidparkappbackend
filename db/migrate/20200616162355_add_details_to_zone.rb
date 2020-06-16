class AddDetailsToZone < ActiveRecord::Migration[6.0]
  def change
    add_column :zones, :average_masks, :float
    add_column :zones, :average_distancing, :float
    add_column :zones, :average_not_crowded, :float
  end
end
