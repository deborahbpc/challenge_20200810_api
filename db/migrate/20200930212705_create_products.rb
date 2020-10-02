class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.string :type, null: false
      t.text :description
      t.integer :rating
      t.decimal :price, null: false, precision: 10, scale: 2
      t.timestamps
    end
  end
end
