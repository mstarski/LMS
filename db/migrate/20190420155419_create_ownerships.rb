class CreateOwnerships < ActiveRecord::Migration[5.2]
  def change
    create_table :ownerships do |t|
      t.references :author
      t.references :book
      t.timestamps
    end
  end
end
