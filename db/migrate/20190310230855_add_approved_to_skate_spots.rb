class AddApprovedToSkateSpots < ActiveRecord::Migration[5.2]
  def change
    add_column :skate_spots, :approved, :boolean, :default => false
  end
end
