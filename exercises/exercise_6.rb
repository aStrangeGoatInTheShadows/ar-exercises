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


def add_employee (store, first, last, wage) 
  store.employees.create(first_name: first, last_name: last, hourly_rate: wage)
end


add_employee(@store1, "Jennifer", "Conolly", 15)
add_employee(@store1, "Steven", "McNash", 23)
add_employee(@store1, "Michelle", "Conolly", 15)
add_employee(@store1, "Peter", "Hampton", 15)
add_employee(@store1, "Gwen", "Conolly", 15)
add_employee(@store2, "Matt", "Generic", 90)
add_employee(@store2, "Sports", "Dude", 23)
add_employee(@store2, "Ein", "Stein", 15)
add_employee(@store2, "George", "Bush, Jr", 140)
add_employee(@store2, "Litterally A", "Rabbit", 15)


# Add the following code directly inside the Store model (class): has_many :employees

# Exercise 6: One-to-many association

# Let's tell Active Record that these two tables are in fact related via the store_id column.

# Add some data into employees. Here's an example of one (note how it differs from how you create stores): @store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
# Go ahead and create some more employees using the create method. You can do this by making multiple calls to create (like you have before.) No need to assign the employees to variables though. Create them through the @store# instance variables that you defined in previous exercises. Create a bunch under @store1 (Burnaby) and @store2 (Richmond). Eg: @store1.employees.create(...).