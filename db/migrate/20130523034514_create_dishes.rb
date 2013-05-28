class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :dish_type
      t.string :detail
      t.integer :price

      t.timestamps
    end
  end
end
