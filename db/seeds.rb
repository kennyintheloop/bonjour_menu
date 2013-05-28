# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#    :type, :name, :detail, :price
menu_list = [
  ["Starters","Tiny Hot Dogs","Can't eat just one. Who came up with this idea, anyway?",7],
  ["Starters","Onion Strands","Like onion rings, only different.",5],
  ["Starters","Flatbread","As flat as we can make it, so we can save some dough.a",6],
  ["Entrees","Steak","The best steak this side of Hubbard St.",27],
  ["Entrees","Aha Tuna Plate","Learn something new with every bite.",17],
  ["Entrees","Chicken Ceasar Salad","Fresh lettuce, grilled chicken, and ceaser dressing on the side.",22],
  ["Drinks","Soft Drinks","Who are we kidding? We only serve iced tea.",5],
  ["Drinks","Bear","Want your favorite local brew? Too bad. We don't have it.",6],
  ["Desserts","Strawberry Cheesecake","The best cheesecake in Chicago.",8],
  ["Desserts","M&M's","Plain or peanut",6]
]
#    :type, :name, :detail, :price
menu_list.each do |dish_type, name,detail,price|
  puts name
  Dish.create(dish_type:dish_type, name: name,detail:detail,price:price)
end
