class AddCoordsToTheBookstore < ActiveRecord::Migration[5.2]
  def change
    add_column :bookstores, :latitude, :float
    add_column :bookstores, :longitude, :float
  end
end
