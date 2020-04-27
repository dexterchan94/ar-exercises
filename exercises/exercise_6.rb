require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Andy", last_name: "Lindsay", hourly_rate: 40)
@store1.employees.create(first_name: "Travis", last_name: "Borsa", hourly_rate: 40)
@store2.employees.create(first_name: "Michael", last_name: "Scott", hourly_rate: 20)
@store2.employees.create(first_name: "Darryl", last_name: "Philbin", hourly_rate: 25)
@store2.employees.create(first_name: "Dwight Schrute", last_name: "Scott", hourly_rate: 30)