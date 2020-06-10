class CreateParks < ActiveRecord::Migration[6.0]
  def change
    create_table :parks do |t|
      t.string :name
      t.string :boro
      t.string :address
      t.string :link
      t.integer :average_rating
      t.string :picture_url

      t.timestamps
    end
  end
end
