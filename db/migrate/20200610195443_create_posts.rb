class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :content
      t.boolean :masks
      t.boolean :not_crowded
      t.boolean :distancing
      t.references :user, null: false, foreign_key: true
      t.references :park, null: false, foreign_key: true

      t.timestamps
    end
  end
end
