class Favorite < ActiveRecord::Base
  belongs_to :customer
  belongs_to :restaurant
  # has_many :resturants

  def self.view_all_favorites
    Favorite.all.each do |fav|
      puts" #{fav}"
    end
  end


end
