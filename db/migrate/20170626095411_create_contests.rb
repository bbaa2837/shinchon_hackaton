class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|

      t.timestamps null: false
      t.string :area
      t.string :name
      t.text :infod
      t.text :infom
      t.string :imgurl
    end
  end
end
