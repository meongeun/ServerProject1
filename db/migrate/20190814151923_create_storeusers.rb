class CreateStoreusers < ActiveRecord::Migration[5.2]
  def change
    create_table :storeusers do |t|
      t.string :pw
      t.string :target
      t.integer :age
      t.boolean :gender
      t.string :image
      t.references :store, foreign_key: true
      t.references :ad, foreign_key: true

      t.timestamps
    end
  end
end
