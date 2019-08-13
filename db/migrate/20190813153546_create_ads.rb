class CreateAds < ActiveRecord::Migration[5.2]
  def change
    create_table :ads do |t|
      t.string :type
      t.text :menu
      t.boolean :cancel
      t.integer :np
      t.datetime :starttime
      t.datetime :time
      t.integer :discount
      t.integer :repeat
      t.datetime :startdate
      t.datetime :enddate
      t.integer :price
      t.references :event, foreign_key: true
      t.references :warn, foreign_key: true

      t.timestamps
    end
  end
end
