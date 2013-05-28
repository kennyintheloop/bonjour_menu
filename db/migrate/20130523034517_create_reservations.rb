class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :appoint_date
      t.integer :party
      t.integer :user_id
      t.string :user_type

      t.timestamps
    end
  end
end
