class AddPictureAttributionLinkToZones < ActiveRecord::Migration[6.0]
  def change
    add_column :zones, :picture_attribution_link, :string
  end
end
