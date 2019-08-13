class CreateCustomusers < ActiveRecord::Migration[5.2]
  def change
    create_table :customusers do |t|
      t.string :phone
      t.string :id
      t.string :pw
      t.string :residence
      t.string :location
      t.integer :age
      t.boolean :gender
      t.string :school
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
