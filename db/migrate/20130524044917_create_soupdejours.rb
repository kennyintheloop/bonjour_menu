class CreateSoupdejours < ActiveRecord::Migration
  def change
    create_table :soupdejours do |t|
      t.string :sname
      t.date :sdate

      t.timestamps
    end
  end
end
