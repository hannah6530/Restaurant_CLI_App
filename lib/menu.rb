class Menu < ActiveRecord::Base
  has_many :orders
  has_many :customers, through: :orders
  belongs_to :restaurant

# def get_menu(res_name)
#   Menu.all.select do |rest_menu|
#     res_name == rest_menu.menus
#   end
# end
end
