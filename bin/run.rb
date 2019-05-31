require_relative '../config/environment'

# seletion = 0
puts "Hello there!!! Welcome to My Restaurant Eats. Please select from the following...."
sleep(2)


puts "1. Login"
puts "2. Create account"
puts "3. Exit"


selection = gets.chomp

#

def show_main_menu(new_customer)
  puts "HI #{new_customer.first_last_name}, please select from the following..."
  puts "1. View all restaurants."
  puts "2. View all restaurants in your borough or city."
  puts "3. View a restaurants menus."
  puts "4. Make an order."
  puts "5. View all of your orders."
  puts "6. View and/or change your account information."
  puts "7. Delete account"
end

sleep(1)

if selection == '1'

  puts "Enter username"
  user_name = gets.chomp
  new_customer= Customer.find_by(username: user_name)
  if new_customer
    show_main_menu(new_customer)
  else
    puts "Sorry, user not found."
end


elsif selection == '2'
  # binding.pry
  puts "Enter your full name."

  fullname = gets.chomp

  sleep(1)

  puts "Enter your email address."

  email = gets.chomp

  sleep(1)

  puts "Enter your desired username."
  user_name = gets.chomp

  new_customer = Customer.create(first_last_name: fullname, email_address: email, username: user_name)

  show_main_menu(new_customer)


elsif selection == '3'
  exit(0)

end

# $current_user = user_name



# case main_menu_selection
# when '1'
#   Restaurants.all.each do |rest|
#     puts" #{rest.name}, #{rest.location}"
# when '2'
#   puts "Enter borough or city"
#   borough_city = gets.chomp
#   def view_res_by_location(borough_city)
#     Restaurants.all.select do |rest_borough|
#       borough_city == rest_borough.location
# when '3'
#   puts" For which resturant would you like to view its menu?"
#   res_name = gets.chomp
#   res_id =
#   def view_res_menu(res_name)
#     Menus.all.select do |rest_menu|
#       self.restaurant_id == rest_menu.restaurant_id
# when '4'
#   puts "Do you know the name of the restaurant you would like order from? (Enter yes or no)"
#   answer = gets.chomp
#   if (answer == 'yes')
#     puts "Enter resturant's name"
#     res_choice = gets.chomp
#     view_res_menu(res_choice)
#     puts "What type of meal would you like to eat?"
#     eats = gets.chomp
#     sleep(1)
#     puts "What would you like to drink"?
#     drinks = gets.chomp
#     new_order = Order.create()
#
#   else
#     puts "What is the location of the restaurant you would like to eat at?"
#     loc_res = gets.chomp
#     view_res_by_location(loc_res)
#     sleep(1)
#     puts "What would you like to order"?
#     order_food = gets.chomp
#
#
#   when '5'
#     Orders.all.each do |all_orders|
#
#
#   when'6'
#     Customer.all.each do |cust|
#


main_menu_selection = gets.chomp


if main_menu_selection == '1'
  view = Restaurant.view_all_restaurants


elsif main_menu_selection == '2'
  puts "Enter borough or city"
  borough_city = gets.chomp
  res_locations = Restaurant.view_res_by_location(borough_city)
  puts "The resturants in the #{borough_city} are:"
  res_locations.each do |restaurant|
    puts "#{restaurant.name}."
  end

elsif main_menu_selection == '3'
  puts" For which resturant would you like to view its menu?"
  # view = Restaurant.view_all_restaurants
  res_name = gets.chomp
  find = Restaurant.find_by_name(res_name)
  puts "The menu for #{res_name}, is as follows...."

  find_a_menu = find.menus.select do |menu|
     menu.meal
   end
  find_a_menu.each_with_index do |menu, index|
    puts "#{index + 1}. #{menu.menu_type}"
    JSON.parse(menu.meal).each_with_index do |item|
      puts "    #{item}"
    end
  end


  elsif main_menu_selection == '4'
    see_res = Restaurant.view_all_restaurants
    puts "Enter the name of the restaurant you would like to make an order from"
    res_choice = gets.chomp
    # res_instance = go to database and get restaurant instance that matches "res_choice"
    res_instance = Restaurant.find_by_name(res_choice)
    puts "What type of meal would you like to eat?"
    eats = gets.chomp
    # go to restaurnt menues (res_instance.menus) select just the menues that have menu_typ == eats
    #ask user what they want to eat.
    puts "What meal would you like to eat?"
    meal_eats = gets.chomp
    # puts "What would you like to drink"?
    # drinks = gets.chomp
    new_order = Order.create(menu_id: , user_id: user_name.id )




elsif main_menu_selection == '6'
    puts "1. View Account Informtion"
    puts "2. Change Account Information"
    select = gets.chomp
    if select == '1'
      get_info = Customer.view_customer_info(user_name)
      get_info.each do |information|
        # binding.pry
        puts "Username: #{information.username}"
        puts "First and Last Name: #{information.first_last_name}"
        puts "Email Address: #{information.email_address}"
      end
    elsif select == '2'
      puts "1. Change Your First and Last Name"
      puts "2. Change Your Email Address"
      puts "3. Change Your Username"
      select_another = gets.chomp
      if select_another  == '1'
        puts "What would you like to change your name to?"
        change_name = gets.chomp
        new_customer.update_attribute(:first_last_name, change_name)
      elsif select_another  == '2'
        puts "What would you like to change your email address to?"
        change_email = gets.chomp
        new_customer.update_attribute(:email_address, change_email)
      elsif select_another  == '3'
        puts "What would you like to change your username to?"
        change_username = gets.chomp
        new_customer.update_attribute(:username, change_username)
      end
    end





elsif main_menu_selection == '7'
    Customer.destroy_all(username: user_name)
  end




#

#
#   else
#     puts "What is the location of the restaurant you would like to eat at?"
#     loc_res = gets.chomp
#     view_res_by_location(loc_res)
#     sleep(1)
#     puts "What would you like to order"?
#     order_food = gets.chomp
#
# elsif main_menu_selection == '5'
#   Orders.all.each do |all_orders|
#
#
#
# end
#
# elsif main_menu_selection == '3'
