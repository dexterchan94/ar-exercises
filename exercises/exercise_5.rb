require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
sum = Store.sum(:annual_revenue)
count = Store.count

puts "Total revenue for all stores: #{sum}"
puts "Average revenue for all stores: #{sum / count}"
puts "Number of stores generating $1M or more: #{Store.where( "annual_revenue >= ?", [1000000]).count}"