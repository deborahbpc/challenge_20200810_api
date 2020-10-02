class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.string :type, null: false
      t.text :description
      t.integer :price, null: false
      t.integer :rating, null: false, :default =>  0

      t.timestamps
    end
  end
end
