class AddPictureAttributionToParks < ActiveRecord::Migration[6.0]
  def change
    add_column :parks, :picture_attribution, :string
  end
end
