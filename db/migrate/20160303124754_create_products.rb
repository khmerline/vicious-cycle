class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :catalog
      t.string :product_type
      t.string :color
      t.text :description
      t.decimal :price
      t.string :discount

      t.timestamps null: false
    end
  end
end
