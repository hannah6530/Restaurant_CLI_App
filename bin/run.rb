require_relative '../config/environment'
#
#   def login_screen
#
#     puts "1. Login"
#     puts "2. Create account"
#     puts "3. Exit"
#     $selection = gets.chomp
#   end
#
#   puts "Hello there!!! Welcome to My Restaurant Eats. Please select from the following...."
#   sleep(1)
#   login_screen
#   # selection = gets.chomp
#
# def show_main_menu(new_customer)
#   sleep(1)
#   puts "HI #{new_customer.first_last_name}, please select from the following..."
#   puts "1. View all restaurants"
#   puts "2. View all restaurants in your borough or city"
#   puts "3. View a restaurants menus"
#   puts "4. Make an order"
#   puts "5. View all of your orders"
#   puts "6. Add to your favorites"
#   puts "7. View all of your favorites"
#   puts "8. View and/or change your account information"
#   puts "9. Delete account"
#   puts "10. Signout"
# end
#
#
# sleep(1)
#
# if $selection == '1'
#   sleep(1)
#   puts "Enter username"
#   user_name = gets.chomp
#   sleep(1)
#   puts "Please enter password"
#   pass_word = gets.chomp
#   # binding.pry
#   new_customer = Customer.find_by(username: user_name)
#   new_cus_pass = Customer.find_by(password: pass_word)
#   # binding.pry
#   if new_customer == nil
#     sleep(1)
#     puts "Sorry, user not found. Please try again"
#     login_screen
#   elsif new_customer && !new_cus_pass
#     puts "Incorrect password. Please try again"
#     sleep(1)
#     # binding.pry
#     login_screen
#   else if new_customer && new_cus_pass
#     sleep(1)
#     show_main_menu(new_customer)
#   end
# end
#
# elsif $selection == '2' #doesnt start
#   sleep(1)
#   puts "Enter your full name."
#   fullname = gets.chomp
#   sleep(1)
#   puts "Enter your email address."
#   email = gets.chomp
#   sleep(1)
#   puts "Enter your username."
#   user_name = gets.chomp
#   while Customer.exists?(username: user_name) do
#     sleep(1)
#     puts "This username is already taken. Please enter a different one"
#     user_name = gets.chomp
#     sleep(1)
#     break if !Customer.exists?(username: user_name)
#   end
#     sleep(1)
#     puts "Enter a password of your choice"
#     pass_word = gets.chomp
#     new_customer = Customer.create(first_last_name: fullname, email_address: email, username: user_name,
#     password: pass_word)
#     sleep(1)
#     show_main_menu(new_customer)
#
#
# elsif $selection == '3'
#   sleep(1)
#   exit(0)
# end
#
# # $current_user = user_name
# main_menu_selection = gets.chomp
#
# if main_menu_selection == '1'
#   sleep(1)
#   view = Restaurant.view_all_restaurants
#   sleep(1)
#   show_main_menu(new_customer)
#
#
#
# elsif main_menu_selection == '2'
#   sleep(1)
#   puts "Enter borough or city"
#   borough_city = gets.chomp
#   res_locations = Restaurant.view_res_by_location(borough_city)
#   puts "The resturants in the #{borough_city} are:"
#   res_locations.each do |restaurant|
#     puts "#{restaurant.name}."
#   end
#     sleep(1)
#     show_main_menu(new_customer)
#
#
#
# elsif main_menu_selection == '3' #says undefined method when turning it into a method
#     puts "For which resturant would you like to view its menu?"
#     # view = Restaurant.view_all_restaurants
#     res_name = gets.chomp
#     find = Restaurant.find_by_name(res_name) #find contains the instance of the restaurnt
#     puts "The menu for #{res_name}, is as follows...."
#     # binding.pry
#     # find_a_menu = find.menus
#     find_a_menu = find.menus.select do |menu|
#        menu.meal
#      end
#     find_a_menu.each_with_index do |menu, index|
#       puts "#{index + 1}. #{menu.menu_type}"
#       JSON.parse(menu.meal).each_with_index do |item|
#         puts "    #{item}"
#       end
#     end
#
#   # elsif main_menu_selection == '4'
#     # sleep(1)
#     # puts "What type of meal would you like to eat?"
#     # meal_eats = gets.chomp
#     # customer_eats = find.menus.select do |cus_eats| #contains the menus where the meal is equal to the customers choice(meal_eats)
#     #   cus_eats.meal == meal_eats
#     #
#     # customer_eats.each_with_index do |item|
#
#     #get the menu instance of the restaurnt where the meal of that instance is equal to meal_eats
#       # menu.meal.select do |food|
#       #   food == meal_eats
#
#       # puts "What would you like to drink"?
#       # drinks = gets.chomp
#       # new_order = Order.create(menu_id: meal_eats.id , customer_id: new_customer.id )
#       # puts "Your order has been placed"
#       #ask customer for the meal that they want and save it to a variable
#
#
# elsif main_menu_selection == '5'
#   my_orders = Order.all.each do |all_orders|
#     all_orders.customer_id == self.customer_id
#   end
#
#
# elsif main_menu_selection == '6'
#   puts "What restaurant would you like to add to your favorites?"
#   fav_res = gets.chomp
#   fav = Restaurant.find_by(name: fav_res)
#   new_favorite = Favorite.create(restaurnt_id: fav.id, customer_id: new_customer.id)
#   puts "You have successfully added #{fav_res} to your favorites"
#
# # elsif main_menu_selection == '7'
# #   puts "Your favorites are as follows...."
# #   # binding.pry
# #   # view_my_favs = Favorite.view_all_favorites
# #   Favorite.all.map do |favs|
# #     favs
# #   JSON.parse(favs).each_with_index do |item|
# #       puts "#{item}"
# #
# #
# #   # view_my_favs.each do |items|
# #   #   puts "#{items.name}"
# # end
# # end
#
#
#
# elsif main_menu_selection == '8'
#     sleep(1)
#     puts "1. View Account Informtion"
#     puts "2. Change Account Information"
#     puts "3. Back to main menu"
#     select = gets.chomp
#     if select == '1'
#       sleep(1)
#       get_info = Customer.view_customer_info(user_name)
#       get_info.each do |information|
#         # binding.pry
#         sleep(1)
#         puts "Username: #{information.username}"
#         puts "First and Last Name: #{information.first_last_name}"
#         puts "Email Address: #{information.email_address}"
#       end
#     elsif select == '2'
#       while 1==1
#         sleep(1)
#         puts "1. Change Your First and Last Name"
#         puts "2. Change Your Email Address"
#         puts "3. Change Your Username"
#         puts "4. Change Your Password"
#         puts "5. Back to main menu"
#         select_another = gets.chomp
#         if select_another  == '1'
#           sleep(1)
#           puts "What would you like to change your name to?"
#           change_name = gets.chomp
#           new_customer.update_attribute(:first_last_name, change_name)
#         elsif select_another  == '2'
#           sleep(1)
#           puts "What would you like to change your email address to?"
#           change_email = gets.chomp
#           new_customer.update_attribute(:email_address, change_email)
#         elsif select_another  == '3'
#           sleep(1)
#           puts "What would you like to change your username to?"
#           change_username = gets.chomp
#           new_customer.update_attribute(:username, change_username)
#         elsif select_another  == '4'
#           sleep(1)
#           puts "What would you like your new password to be?"
#           change_password = gets.chomp
#           new_customer.update_attribute(:password, change_password)
#         elsif select_another == '5'
#           break
#           sleep(1)
#           show_main_menu(new_customer)
#         end
#       end
#   elsif select == '3'
#     sleep(1)
#     show_main_menu(new_customer)
#
#
# elsif main_menu_selection == '9' #doesnt run
#     # sleep(1)
#     Customer.destroy_all(username: user_name)
#     sleep(1)
#     puts "Your account has been successfuly deleted"
#     sleep(1)
#     login_screen
# end
#
#
# elsif main_menu_selection == '10'
#   sleep(1)
#   puts "You have been signed out"
#   sleep(1)
#   login_screen
# end
#
#
#
#
#
#










def process_login
  case login_screen_selection
  when '1'
    existing_user
  when '2'
    create_account
  when '3'
    exit_application
  else
    process_login
  end
end

def login_screen_selection
  puts "1. Login"
  puts "2. Create account"
  puts "3. Exit"
  gets.chomp
end

def run
  puts "Hello there!!! Welcome to My Restaurant Eats. Please select from the following...."
  process_login
end


# def customer_not_found
#   puts 'Sorry, username and/or password combination not valid. Please try again'
#   login_screen_selection
# end
#

def existing_user
  puts "Please Enter Username"
    username = gets.chomp

    puts "Please Enter Password"
    password = gets.chomp

    unless $customer = Customer.find_by(
                        username: username,
                        password: password
                      )
      puts 'Sorry, username and/or password combination not valid. Please try again'
      process_login
    end
    main_menu($customer)
  end



def create_account
 puts "Enter your full name"
 get_full_name = gets.chomp

 puts 'Enter your email address'
 get_email = gets.chomp

 puts 'Enter your desired username.'
 get_username = gets.chomp


 while Customer.exists?(username: get_username) do
   puts "This username is already taken. Please enter a different one"
   get_username = gets.chomp
   break if !Customer.exists?(username: get_username)
 end

 puts "Please enter password"
 get_password = gets.chomp

 $customer = Customer.create(
   first_last_name: get_full_name,
   email_address:   get_email,
   username:        get_username,
   password:        get_password)

   if $customer.errors.full_messages.empty?
    puts "******successfully created customer*******"
   else
    puts "*****ok we could not create the customer*****"
   end

   main_menu($customer)

end



def exit_application
  exit(0)
end


def main_menu_selection
  puts "HI #{$customer.first_last_name}, please select from the following..."
  puts "1. View all restaurants"
  puts "2. View all restaurants in your borough or city"
  puts "3. View a restaurants menus"
  puts "4. Make an order"
  puts "5. View all of your orders"
  puts "6. Add to your favorites"
  puts "7. View all of your favorites"
  puts "8. View and/or change your account information"
  puts "9. Delete account"
  puts "10. Signout"
  gets.chomp
end

def main_menu(customer)
  case main_menu_selection
  when '1'
    view_all_restaurants
  when '2'
    view_borough_or_city(customer)
  when '3'
    view_restaurant_menu
  when '4'
    # TODO: define this
  when '5'
    view_orders(customer)
  when '6'
    add_favorite_restaurant(customer)
  when '7'
    # TODO: define this
  when '8'
    manage_account(customer)
  when '9'
    delete_account(customer)
  when '10'
    sign_out
  end
end

def view_all_restaurants
  Restaurant.view_all_restaurants
  main_menu(customer)
end

def view_borough_or_city(customer)
  puts "Enter borough or city"
  city = gets.chomp
  puts "The resturants in the #{city} are:"
  Restaurant.view_res_by_location(city).each do |restaurant|
    puts "#{restaurant.name}."
  end
  main_menu(customer)
end

def view_restaurant_menu
  puts "For which resturant would you like to view its menu?"
  name = gets.chomp
  restaurant = Restaurant.find_by_name(name)
  puts "The menu for #{name}, is as follows...."
  menus_with_meals = restaurant.menus.select do |menu|
    menu.meal
  end
  menus_with_meals.each_with_index do |menu, index|
    puts "#{index + 1}. #{menu.menu_type}"
    JSON.parse(menu.meal).each_with_index do |item|
    puts "    #{item}"
    end
  end
end

# def view_orders(customer)
#    IMO orders should have a belongs_to association with customer
#    then you could do customer.orders
#   Order.where(customer_id: customer.id)
# end

def add_favorite_restaurant(customer)
  puts "What restaurant would you like to add to your favorites?"
  favorite_name = gets.chomp
  restaurant = Restaurant.find_by(name: favorite_name)
  Favorite.create(
    restaurant_id: restaurant.id,
    customer_id:   new_customer.id
  )
  puts "You have successfully added #{favorite_name} to your favorites"
end

def manage_account(customer)
  case manage_account_selection
  when '1'
    display_customer_info(customer)
  when '2'
    update_customer_info(customer)
  when '3'
    main_menu(customer)
  end
end

def display_customer_info(customer)
  puts "Username: #{customer.username}"
  puts "First and Last Name: #{customer.first_last_name}"
  puts "Email Address: #{customer.email_address}"
end

def manage_account_selection
  puts "1. View Account Informtion"
  puts "2. Change Account Information"
  puts "3. Back to main menu"
  gets.chomp
end

def delete_account(customer)
  # You already have a reference to the customer record, use it
  customer.destroy!
  puts 'Your account has been successfuly deleted'
  login_screen
end

def update_customer_info(customer)
  while true
    case update_customer_info_selection
    when '1'
      update_first_last_name(customer)
    when '2'
      update_email(customer)
    when '3'
      update_username(customer)
    when '4'
      update_password(customer)
    when '5'
      main_menu(customer)
    end
  end
end

def update_customer_info_selection
  puts "1. Change Your First and Last Name"
  puts "2. Change Your Email Address"
  puts "3. Change Your Username"
  puts "4. Change Your Password"
  puts "5. Back to main menu"
  gets.chomp
end

def update_first_last_name(customer)
  puts 'What would you like to change your name to?'
  customer.update!(first_last_name: gets.chomp)
end

def update_email(customer)
  puts 'What would you like to change your email address to?'
  csutomer.update!(email_address: gets.chomp)
end

def update_username(customer)
  puts 'What would you like to change your username to?'
  customer.update!(username: gets.chomp)
end

def update_password(customer)
  puts 'What would you like your new password to be?'
  customer.update!(password: gets.chomp)
end

def sign_out
  puts "You have been signed out"
  login_screen
end

#Start the entire flow with one command!
run
