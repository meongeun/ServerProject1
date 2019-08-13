class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :phone
      t.sting :location
      t.string :runtime
      t.text :menu
      t.references :customuser, foreign_key: true
      t.references :review, foreign_key: true
      t.string :name
      t.references :storeuser, foreign_key: true

      t.timestamps
    end
  end
end
