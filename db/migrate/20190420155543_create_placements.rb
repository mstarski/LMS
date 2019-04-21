class CreatePlacements < ActiveRecord::Migration[5.2]
  def change
    create_table :placements do |t|
      t.references :collection, index: true
      t.references :book, index: true
      t.timestamps
    end
  end
end
