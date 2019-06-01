class Customers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :first_last_name
      t.string :email_address
      t.string :username
      t.string :password
  end
end
end
