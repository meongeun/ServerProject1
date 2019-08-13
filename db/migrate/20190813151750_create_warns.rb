class CreateWarns < ActiveRecord::Migration[5.2]
  def change
    create_table :warns do |t|
      t.references :customuser, foreign_key: true
      t.text :contents

      t.timestamps
    end
  end
end
