class Favorite < ActiveRecord::Base
  belongs_to :customer
  belongs_to :restaurnt
  # has_many :resturants

end
