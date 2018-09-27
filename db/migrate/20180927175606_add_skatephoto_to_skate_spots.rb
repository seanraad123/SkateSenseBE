class AddSkatephotoToSkateSpots < ActiveRecord::Migration[5.2]
  def change
    add_column :skate_spots, :skatephoto, :string
  end
end
