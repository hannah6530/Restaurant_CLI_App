class Orders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer  :menu_id
      t.integer :customer_id
    end
  end
end
