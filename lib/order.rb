class Order < ActiveRecord::Base
  #will return an array of hashes
  #each hash will be a random number that contains a meal key that points to the name of the meal and a drink that points to the
  #name of the drink

belongs_to :customer
belongs_to :menu 

end
