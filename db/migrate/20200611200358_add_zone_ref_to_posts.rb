class AddZoneRefToPosts < ActiveRecord::Migration[6.0]
  def change
    add_reference :posts, :zone, null: false, foreign_key: true
  end
end
