class CreateZones < ActiveRecord::Migration[6.0]
  def change
    create_table :zones do |t|
      t.string :name
      t.string :location
      t.integer :average_rating
      t.string :picture_url
      t.references :park, null: false, foreign_key: true

      t.timestamps
    end
  end
end
