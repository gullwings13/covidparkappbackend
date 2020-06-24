class AddPictureAttributionToZones < ActiveRecord::Migration[6.0]
  def change
    add_column :zones, :picture_attribution, :string
  end
end
