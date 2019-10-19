class Customer < ActiveRecord::Base
  #return an instance of all customers
  #customers instance will contain the menu they choose from along with their order# and the specific restaurant they eat it at
  #customer will be able to make a selection of the meal and drink
  #a random number generator will be used to assign the order that they make
  #this information will be put into a hash
  has_many :orders
  # has_many :menus, through: :orders
  has_many :favorites
  has_many :restaurants, through: :favorites

  def self.view_customer_info(user_name)
    Customer.all.select do |user_info|
      user_name == user_info.username
end
end
end
