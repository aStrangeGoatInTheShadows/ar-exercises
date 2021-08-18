require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts "The total sum of revenues is $#{Store.sum(:annual_revenue)}"
puts "The average of revenue is $#{Store.sum(:annual_revenue) / Store.count}"

large_stores = Store.where(annual_revenue: 1000000..Float::INFINITY)

puts "The ammount of stores making over $1M is #{large_stores.count}"
