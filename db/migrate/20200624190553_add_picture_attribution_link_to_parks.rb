class AddPictureAttributionLinkToParks < ActiveRecord::Migration[6.0]
  def change
    add_column :parks, :picture_attribution_link, :string
  end
end
