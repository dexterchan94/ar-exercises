require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
print "Enter a new store name: "
store_name = gets.chomp
pp Store.create(name: store_name).errors.messages
# pp Store.create(name: store_name, annual_revenue: 100000, mens_apparel: false, womens_apparel: false).errors.messages
# pp Store.create(name: store_name, annual_revenue: 100000, mens_apparel: true, womens_apparel: false).errors.messages
# pp Store.create(name: store_name, annual_revenue: 100000, mens_apparel: true, womens_apparel: true).errors.messages