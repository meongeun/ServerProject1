class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :store, foreign_key: true
      t.float :rate
      t.text :content
      t.references :customeruser, foreign_key: true

      t.timestamps
    end
  end
end
