require_relative '../config/environment'

  def login_screen
    puts "1. Login"
    puts "2. Create account"
    puts "3. Exit"
    $selection = gets.chomp
  end


  puts "Hello there!!! Welcome to My Restaurant Eats. Please select from the following...."
  sleep(1)
  login_screen
  # selection = gets.chomp

def show_main_menu(new_customer)
  sleep(1)
  puts "HI #{new_customer.first_last_name}, please select from the following..."
  puts "1. View all restaurants."
  puts "2. View all restaurants in your borough or city."
  puts "3. View a restaurants menus."
  puts "4. Make an order."
  puts "5. View all of your orders."
  puts "6. View and/or change your account information."
  puts "7. Delete account"
  puts "8. Signout"
end

sleep(1)

if $selection == '1'
  sleep(1)
  puts "Enter username"
  user_name = gets.chomp
  sleep(1)
  puts "Please enter password"
  pass_word = gets.chomp
  new_customer = Customer.find_by(username: user_name)
  new_cus_pass = Customer.find_by(password: pass_word)
  # binding.pry
  if !new_customer
    sleep(1)
    puts "Sorry, user not found."
  elsif new_customer && !new_cus_pass
    puts "Incorrect password. Please try again"
    sleep(1)
    login_screen
  else if new_customer && new_cus_pass
    sleep(1)
    show_main_menu(new_customer)
  end
end

elsif $selection == '2'
  sleep(1)
  puts "Enter your full name."
  fullname = gets.chomp
  sleep(1)
  puts "Enter your email address."
  email = gets.chomp
  sleep(1)
  puts "Enter your desired username."
  user_name = gets.chomp
  while Customer.exists?(username: user_name) do
    sleep(1)
    puts "This username is already taken. Please enter a different one"
    user_name = gets.chomp
    sleep(1)
    break if !Customer.exists?(username: user_name)
  end
    sleep(1)
    puts "Enter a password of your choice"
    pass_word = gets.chomp
    new_customer = Customer.create(first_last_name: fullname, email_address: email, username: user_name,
    password: pass_word)
    sleep(1)
    show_main_menu(new_customer)


elsif $selection == '3'
  sleep(1)
  exit(0)
end


# $current_user = user_name
main_menu_selection = gets.chomp

if main_menu_selection == '1'
  sleep(1)
  view = Restaurant.view_all_restaurants
  sleep(1)
  show_main_menu(new_customer)


elsif main_menu_selection == '2'
  sleep(1)
  puts "Enter borough or city"
  borough_city = gets.chomp
  res_locations = Restaurant.view_res_by_location(borough_city)
  puts "The resturants in the #{borough_city} are:"
  res_locations.each do |restaurant|
    puts "#{restaurant.name}."
  end
  sleep(1)
  puts "Return to main menu?"
  response = gets.chomp
  if (response == 'yes')
    sleep(1)
    show_main_menu(new_customer)
  end


elsif main_menu_selection == '3'
  puts "For which resturant would you like to view its menu?"
  # view = Restaurant.view_all_restaurants
  res_name = gets.chomp
  find = Restaurant.find_by_name(res_name)
  puts "The menu for #{res_name}, is as follows...."
  # binding.pry
  find_a_menu = find.menus.select do |menu|
     menu.meal
   end
  find_a_menu.each_with_index do |menu, index|
    puts "#{index + 1}. #{menu.menu_type}"
    JSON.parse(menu.meal).each_with_index do |item|
      puts "    #{item}"
    sleep(1)
    show_main_menu(new_customer)
    end
  end


  # elsif main_menu_selection == '4'
  #   see_res = Restaurant.view_all_restaurants
  #   puts "Enter the name of the restaurant you would like to make an order from"
  #   res_choice = gets.chomp
  #   # res_instance = go to database and get restaurant instance that matches "res_choice"
  #   res_instance = Restaurant.find_by_name(res_choice)
  #   puts "What type of meal would you like to eat?"
  #   eats = gets.chomp
  #   # go to restaurnt menues (res_instance.menus) select just the menues that have menu_typ == eats
  #   #ask user what they want to eat.
  #   puts "What meal would you like to eat?"
  #   meal_eats = gets.chomp
  #   # puts "What would you like to drink"?
  #   # drinks = gets.chomp
  #   new_order = Order.create(menu_id: , user_id: user_name.id )

  # elsif main_menu_selection == '5'
  #   Orders.all.each do |all_orders|
  #
  #
  #
  # end


elsif main_menu_selection == '6'
    sleep(1)
    puts "1. View Account Informtion"
    puts "2. Change Account Information"
    puts "3. Back to main menu"
    select = gets.chomp
    if select == '1'
      sleep(1)
      get_info = Customer.view_customer_info(user_name)
      get_info.each do |information|
        # binding.pry
        sleep(1)
        puts "Username: #{information.username}"
        puts "First and Last Name: #{information.first_last_name}"
        puts "Email Address: #{information.email_address}"
      end
    elsif select == '2'
      while 1==1
        sleep(1)
        puts "1. Change Your First and Last Name"
        puts "2. Change Your Email Address"
        puts "3. Change Your Username"
        puts "4. Change Your Password"
        puts "5. Back to main menu"
        select_another = gets.chomp
        if select_another  == '1'
          sleep(1)
          puts "What would you like to change your name to?"
          change_name = gets.chomp
          new_customer.update_attribute(:first_last_name, change_name)
        elsif select_another  == '2'
          sleep(1)
          puts "What would you like to change your email address to?"
          change_email = gets.chomp
          new_customer.update_attribute(:email_address, change_email)
        elsif select_another  == '3'
          sleep(1)
          puts "What would you like to change your username to?"
          change_username = gets.chomp
          new_customer.update_attribute(:username, change_username)
        elsif select_another  == '4'
          sleep(1)
          puts "What would you like your new password to be?"
          change_password = gets.chomp
          new_customer.update_attribute(:password, change_password)
        elsif select_another == '5'
         sleep(1)
         show_main_menu(new_customer)
      end
    end
  elsif select == '3'
    sleep(1)
    show_main_menu(new_customer)


elsif main_menu_selection == '7'
    # sleep(1)
    Customer.destroy_all(username: user_name)
    puts "Your account has been successfuly deleted"
    sleep(1)
    login_screen
  end

elsif main_menu_selection == '8'
  sleep(1)
  puts "You have been signed out"
  login_screen
end

# elsif main_menu_selection == '8'
# end
