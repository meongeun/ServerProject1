class CreateStoreusers < ActiveRecord::Migration[5.2]
  def change
    create_table :storeusers do |t|
      t.string :id
      t.sting :pw
      t.string :phone
      t.references :store, foreign_key: true
      t.integer :age
      t.boolean :gender
      t.string :target
      t.references :ad, foreign_key: true

      t.timestamps
    end
  end
end
