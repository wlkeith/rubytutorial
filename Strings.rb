# basic string deinition:
introductions = "my name's whitney"

puts introductions


# you can also concatonate strings:
first_name = "whitney"
last_name = "keith"

puts first_name + " " + last_name


# that's kinda ugly though, you can use string interpolation to make it a lil nicer looking:
# interpolation syntax: #{variable_name}
# interpolation only works with double quotes in ruby
puts "My first name is #{first_name} and my last name is #{last_name}"


puts full_name = first_name + last_name


# in ruby, everything's an object, so with irb you can check the type of a variable
# ex: variable.class


# reverse a string:
puts first_name.reverse


# capitalize string:
puts full_name.capitalize


# check if string is empty:
puts "".empty?


# check if value is nil:
puts "".nil?


# replace snippet of a string:
puts welcome = "welcome to the jungle"
puts welcome.sub("the jungle", "utopia")



# list available string methods in ruby:
first_name.methods


# variable assignment
# ruby assigns variables by reference. keep this in mind when you are dealing with variables
# example:
puts icecream_flavor = "mint chocolate"

puts new_icecream_flavor = icecream_flavor

puts icecream_flavor = "cotton candy"

puts new_icecream_flavor

# notice that when you run this, the new flavor is still mint chocolate


# escaping:
# you can use the backslash character to ignore characters in string output
# this will output the actual interpolation syntax when it runs
puts "the new ice cream flavor is \#{new_icecream_flavor}"


