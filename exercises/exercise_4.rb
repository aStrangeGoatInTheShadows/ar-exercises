require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

# Borrowing and modifying the code from Exercise one, create 3 more stores:
Surrey = Store.create(name: "Surrey ", annual_revenue: 224000, womens_apparel:true)
Whistler = Store.create(name: "Whistler", annual_revenue: 1900000 , mens_apparel:true)
Yaletown = Store.create(name: "Yaletown ", annual_revenue: 430000, mens_apparel:true, womens_apparel:true)

@mens_stores = Store.where(mens_apparel:true)

Yaletown.each do |key, value|
  puts "Yaletown's #{key} is #{value}"
end

# NOT CURRENTLY WORKING
# Loop through each of these stores and output their name and annual revenue on each line.
# @mens_stores.each {|key, value| puts "k:#{key} value:#{value}" }

# Exercise 4: Loading a subset of stores

# Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.