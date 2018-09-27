class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :country
      t.string :state
      t.string :city
      t.integer :latitude
      t.integer :longitude
      t.string :description
      t.references :skate_spot, foreign_key: true

      t.timestamps
    end
  end
end
