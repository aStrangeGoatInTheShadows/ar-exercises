require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...

@store3 = Store.find_by(id: 3)
@store3.destroy

puts "Store count after destroying store 3 is #{Store.count}"






# Exercise 3: Delete the third store