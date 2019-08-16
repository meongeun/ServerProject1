class CreateCustomerusers < ActiveRecord::Migration[5.2]
  def change
    create_table :customerusers do |t|
      t.string :pw
      t.string :email
      t.string :phone
      t.string :residence
      t.string :location
      t.integer :age
      t.boolean :gender
      t.string :image
      t.string :uninum
      t.references :ad, foreign_key: true
      t.references :store, foreign_key: true

      t.timestamps
    end
    add_index :customusers, [:email], unique: true
  end
end
