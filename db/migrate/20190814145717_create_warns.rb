class CreateWarns < ActiveRecord::Migration[5.2]
  def change
    create_table :warns do |t|
      t.references :ad, foreign_key: true
      t.text :content
      t.references :customeruser, foreign_key: true

      t.timestamps
    end
  end
end
