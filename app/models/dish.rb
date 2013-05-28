class Dish < ActiveRecord::Base
  attr_accessible :detail, :name, :price, :dish_type
end
