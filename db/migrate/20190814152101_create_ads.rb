class CreateAds < ActiveRecord::Migration[5.2]
  def change
    create_table :ads do |t|
      t.string :kind
      t.string :name
      t.string :menu
      t.integer :price
      t.datetime :starttime
      t.datetime :endtime
      t.datetime :startday
      t.datetime :endday
      t.string :repeat
      t.integer :startdiscount
      t.integer :timegap
      t.integer :discountgap
      t.integer :startnum
      t.integer :plusone
      t.integer :plustwo
      t.references :store, foreign_key: true
      t.references :storeuser, foreign_key: true

      t.timestamps
    end
  end
end
