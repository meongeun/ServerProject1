class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.references :storeuser, foreign_key: true
      t.integer :star
      t.string :name
      t.string :location
      t.string :time
      t.string :menu

      t.timestamps
    end
  end
end
