class AddAddrToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :addr, :string
  end
end
