class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :delivery_date
      t.integer :user_id
      t.integer :total
      t.string :detail

      t.timestamps
    end
  end
end
