class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :type
      t.text :description
      t.integer :price
      t.integer :rating

      t.timestamps
    end
  end
end
