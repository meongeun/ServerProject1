class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :store, foreign_key: true
      t.float :rate
      t.text :content
      t.references :customuser, foreign_key: true

      t.timestamps
    end
  end
end
