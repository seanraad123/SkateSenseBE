class CreateSkateSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :skate_spots do |t|
      t.string :name
      t.string :country
      t.string :state
      t.string :city
      t.float :latitude
      t.float :longitude
      t.string :description
      t.integer :bust_factor
      t.string :photo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
