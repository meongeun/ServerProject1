class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :store
      t.string :event
      t.integer :numstar
      t.text :contents

      t.timestamps
    end
  end
end
