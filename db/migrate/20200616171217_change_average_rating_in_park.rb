class ChangeAverageRatingInPark < ActiveRecord::Migration[6.0]
  def change
    change_column :parks, :average_rating, :float
  end
end
