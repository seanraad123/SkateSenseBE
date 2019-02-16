class RemoveSkatePhotoFromSkateSpots < ActiveRecord::Migration[5.2]
  def change
    remove_column :skate_spots, :skatephoto, :string
  end
end
