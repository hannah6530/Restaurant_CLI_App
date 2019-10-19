class Favorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.integer :restaurant_id
      t.integer :customer_id
    end
  end
end
