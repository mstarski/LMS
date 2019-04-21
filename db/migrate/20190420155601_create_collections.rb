class CreateCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :collections do |t|
      t.integer :size
      t.integer :book_count, :default => 0
      t.string :name
      t.timestamps
    end
  end
end
