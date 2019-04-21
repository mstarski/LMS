class CreateOwnerships < ActiveRecord::Migration[5.2]
  def change
    create_table :ownerships do |t|
      t.references :author, index: true
      t.references :book, index: true
      t.timestamps
    end
  end
end
