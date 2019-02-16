class AddSkatePhotosToSkateSpots < ActiveRecord::Migration[5.2]
  def change
    add_column :skate_spots, :skatephotos, :json
  end
end
