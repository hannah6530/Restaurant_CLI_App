class Menus < ActiveRecord::Migration[5.0]
  def change
    create_table :menus do |t|
    t.string :menu_type
    t.string :meal
    # t.string :drinks
    t.integer :restaurant_id
  end
end
end
