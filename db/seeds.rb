Restaurant.destroy_all
Menu.destroy_all
Order.destroy_all

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
breakfast_menu2 = Menu.create(menu_type: "Breakfast", meal: break_fast, restaurant_id: new_restaurant3.id)
breakfast_menu3 = Menu.create(menu_type: "Breakfast", meal: break_fast, restaurant_id: new_restaurant4.id)
breakfast_menu4 = Menu.create(menu_type: "Breakfast", meal: break_fast, restaurant_id: new_restaurant5.id)

lunch_menu1 = Menu.create(menu_type: "Lunch", meal: lu_nch, restaurant_id: new_restaurant8.id)
lunch_menu2 = Menu.create(menu_type: "Lunch", meal: lu_nch, restaurant_id: new_restaurant9.id)
lunch_menu3 = Menu.create(menu_type: "Lunch", meal: lu_nch, restaurant_id: new_restaurant10.id)
lunch_menu4 = Menu.create(menu_type: "Lunch", meal: lu_nch, restaurant_id: new_restaurant11.id)

dinner_menu3 = Menu.create(menu_type: "Dinner", meal: din_ner, restaurant_id: new_restaurant10.id)
dinner_menu1 = Menu.create(menu_type: "Dinner", meal: din_ner, restaurant_id: new_restaurant2.id)
dinner_menu2 = Menu.create(menu_type: "Dinner", meal: din_ner, restaurant_id: new_restaurant6.id)
dinner_menu4 = Menu.create(menu_type: "Dinner", meal: din_ner, restaurant_id: new_restaurant4.id)
dinner_menu5 = Menu.create(menu_type: "Dinner", meal: din_ner, restaurant_id: new_restaurant7.id)
dinner_menu6 = Menu.create(menu_type: "Dinner", meal: din_ner, restaurant_id: new_restaurant3.id)






drinks_menu4 = Menu.create(menu_type: "Drinks", meal: drin_ks, restaurant_id: new_restaurant6.id)
drinks_menu1 = Menu.create(menu_type: "Drinks", meal: drin_ks, restaurant_id: new_restaurant2.id)
drinks_menu3 = Menu.create(menu_type: "Drinks", meal: drin_ks, restaurant_id: new_restaurant3.id)
drinks_menu6 = Menu.create(menu_type: "Drinks", meal: drin_ks, restaurant_id: new_restaurant4.id)
drinks_menu7 = Menu.create(menu_type: "Drinks", meal: drin_ks, restaurant_id: new_restaurant5.id)
drinks_menu8 = Menu.create(menu_type: "Drinks", meal: drin_ks, restaurant_id: new_restaurant7.id)
drinks_menu9 = Menu.create(menu_type: "Drinks", meal: drin_ks, restaurant_id: new_restaurant8.id)
drinks_menu10 = Menu.create(menu_type: "Drinks", meal: drin_ks, restaurant_id: new_restaurant9.id)
drinks_menu11 = Menu.create(menu_type: "Drinks", meal: drin_ks, restaurant_id: new_restaurant10.id)
drinks_menu12 = Menu.create(menu_type: "Drinks", meal: drin_ks, restaurant_id: new_restaurant11.id)


customer1 =  Customer.create(first_last_name: "Jackie Daniels", email_address: "Jackei@aol.com", username: "Jackyyy334")
customer2 =  Customer.create(first_last_name: "George Carlton", email_address: "GGCarl@gmail.com", username: "Georgy123")
customer3 =  Customer.new(first_last_name: "Timmy Tuner", email_address: "TT033@yahoo.com", username: "TimmmyT03")
customer3 =  Customer.new(first_last_name: "Natalie Carmen", email_address: "Natalie04@yahoo.com", username: "Nat_Nat123")
customer3 =  Customer.new(first_last_name: "Samantha Hamilton", email_address: "Sammy33@yahoo.com", username: "Sammy_H05")

order1 = Order.create(menu_id: breakfast_menu1.id, customer_id: customer1.id)
order2 = Order.create(menu_id: lunch_menu2.id, customer_id: customer2.id)
order3 = Order.create(menu_id: dinner_menu3.id, customer_id: customer3.id)
# order4 = Order.create(menu_meal: drinks_menu.meal, customer_name: customer1.first_last_name)
