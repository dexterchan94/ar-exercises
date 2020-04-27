require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

# Your code goes here ...
@store2.employees.create(first_name: "Hacker", last_name: "McHackerface", hourly_rate: 60)

test_employee = Employee.find_by(first_name: "Hacker")
pp test_employee
puts Employee.find_by(first_name: "Hacker").password