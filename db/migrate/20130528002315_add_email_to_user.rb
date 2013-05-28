class AddEmailToUser < ActiveRecord::Migration
  def change
    add_column :users, :useremail, :string
  end
end
