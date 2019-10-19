class Restaurant < ActiveRecord::Base
  #will return an array of all restaurant instances that contains the...
  #name of restaurant,
  #the location
  #list of food and drinks
  has_many :menus
  has_many :orders 
  has_many :customers, through: :orders

  def self.view_res_by_location(borough_city)
    Restaurant.all.select do |rest_borough|
      borough_city == rest_borough.location
      # puts "#{restaurant_borough.name}."
    end
  end


  def self.view_all_restaurants
    Restaurant.all.each do |rest|
      puts" #{rest.name}, #{rest.location}"
    end
  end
end
