class ChangeAverageRatingInZone < ActiveRecord::Migration[6.0]
  def change
    change_column :zones, :average_rating, :float
  end
end
