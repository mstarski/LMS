class CreatePlacements < ActiveRecord::Migration[5.2]
  def change
    create_table :placements do |t|
      t.references :collection
      t.references :book
      t.timestamps
    end
  end
end
