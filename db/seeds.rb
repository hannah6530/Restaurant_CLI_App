Restaurant.destroy_all
Menu.destroy_all
Order.destroy_all
Favorite.destroy_all

break_fast = ["Pancakes W/ Eggs and Bacon", "Bacon Egg and Cheese", "Oatmeal W/ Raisins", "Scrambled Eggs W/ Grits",
  "Blueberry Waffles W/ Syrup", "Chocolate Chip Pancakes W/ Sausage", "Yogurt Muffin"]

lu_nch = ["Jerk Chicken W/ rice", "Fried Chicken W/ French Fries", "Turkey Sandwhich", "Shrimp Basket", "Lobster Tail",
  "Spagetti W/ Meatballs", "Barbeque Ribs W/ Fried Rice", "Chicke Burritto"]

din_ner = ["Chicken Alfredo", "Chicken Soup", "Spicey Taco Feast", "Mash Potatoes W/ Gravey", "Fried Chicken W/ Rice",
  "Italian Pasta", "Oxtail W/ Mac and Cheese", "Shrimp Alfredo"]

drin_ks = ["Sprite", "Fanta Orange", "Coke", "Pepsi", "Cranberry Juice", "Orange Juice", "Red Wine", "Champagne", "Hennessey",
  "Dusse", "Fruit Punch", "Tropical Punch"]


new_restaurant2 = Restaurant.create(name: "IHOP", location: "Bronx")
new_restaurant3 = Restaurant.create(name: "Olive Garden", location: "New York")
new_restaurant4 = Restaurant.create(name: "Chipotle", location: "Brooklyn")
new_restaurant5 = Restaurant.create(name: "Rib Paradise", location: "Staten Island")
new_restaurant6 = Restaurant.create(name: "Seafood City", location: "Queens")
new_restaurant7 = Restaurant.create(name: "China Deluxe", location: "Bronx")
new_restaurant8 = Restaurant.create(name: "Golden Crust", location: "Bronx")
new_restaurant9 = Restaurant.create(name: "Apple Bees", location: "Staten Island")
new_restaurant10 = Restaurant.create(name: "Popeyes", location: "Brooklyn")
new_restaurant11 = Restaurant.create(name: "Mcdonalds", location: "Queens")

breakfast_menu1 = Menu.create(menu_type: "Breakfast", meal: break_fast, restaurant_id: new_restaurant2.id)

drinks_menu4 = Menu.create(menu_type: "Drinks", meal: drin_ks, restaurant_id: new_restaurant6.id)


customer1 =  Customer.create(first_last_name: "Jackie Daniels", email_address: "Jackei@aol.com", username: "Jackyyy334",
password: "daniels123")
customer2 =  Customer.create(first_last_name: "George Carlton", email_address: "GGCarl@gmail.com", username: "Georgy123",
password: "carl456")
customer3 =  Customer.new(first_last_name: "Timmy Tuner", email_address: "TT033@yahoo.com", username: "TimmmyT03",
password: "password")
customer3 =  Customer.new(first_last_name: "Natalie Carmen", email_address: "Natalie04@yahoo.com", username: "Nat_Nat123",
password: "natnatl")
customer3 =  Customer.new(first_last_name: "Samantha Hamilton", email_address: "Sammy33@yahoo.com", username: "Sammy_H05",
password: "sammysosa")

# order1 = Order.create(menu_id: breakfast_menu1.id, customer_id: customer1.id)
#order will take restaurnt id, menu id, customer_id, meal(string), drink(string)


fav1 = Favorite.create(restaurant_id: new_restaurant2.id, customer_id: customer1.id)
fav2 = Favorite.create(restaurant_id: new_restaurant3.id, customer_id: customer2.id)


# order4 = Order.create(menu_meal: drinks_menu.meal, customer_name: customer1.first_last_name)
