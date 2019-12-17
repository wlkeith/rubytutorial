

# Ruby basics:
# Arrays


# Array in ruby:
address = [1, 2, 3, 4, 5, 6, 7, 8, 9]
# or
array = Array.new

# Built in array reverse method:
address.reverse!


# print arrray
p address


# print array at address location
p address[5]


# reverse the array
new_address = address.reverse!


# print the new array
p new_address


# input into array
array[0] = 1
array << 333


# accessing array elements
array = [:peanut, :butter, :and, :jelly]
puts array[0]
puts array.first
puts array.last

# note that negative index values correspond to their position relative to the end of the array
puts array[-1]
puts array[-3]



# slicing arrays
# syntax: arr[start, length] -> new_arr or nil
# retrieves n elements from the array starting by the sth position, unless beyond the bounds of the array: then returns nil
puts array [0, 1]
puts array [0, 2]
puts array [2, 2]

# 4 is a special case. Think of the starting points as the spaces in between elements: 0peanut1butter2and3jelly4
# this means that 4 is at the end of the array, not outside of the array's bounds
puts array [4, 0]
puts array[4, 100]

# beyond the array's bounds, it will return nil
puts array[5, 0]



# range syntax:  ** note that parens are not necessary for range definition
(1..5)

# the Range class includes Enumerable, which enables powerful iteration methods without the need to convert range into an array
# Range step(n) method:lets you step through the array by increment n
(10..20).step(2).to_a   # outputs [10, 12, 14, 16, 18, 20]

# also note that .to_a converts to array

# other Range methods: cover & include
# include checks for inclusion inside the range
# cover checks against ONLY the initial & end values of the range (begin <= obj <= end)

('a'..'z').include? "cc"  # false
('a'..'z').cover? "cc"    # true
# this cover example is equivalent to "a" <= "cc" <= "z"
# it returns true because **strings are compared character by character**. Since "a" is before "c", characters following the first "c"
# are irrelevant

(1...5).to_a # outputs [1, 2, 3, 4]: one less than the range

# you can also slice arrays with ranges:
array[0..2]
array[0...2]
array[0..-1]




# push & pop methods for arrays:
array = [1, 2]
array.push(:last)   # array is now [1, 2, :last]

popped_value = array.pop
# after pop executes, array is [1, 2]

# wrapup: push adds value to end of array, pop deletes the last value of the array



# shifting arrays:
# shift removes the first element and returns it.
# unshift prepends the provided value to the front of the array & moves all other elements up one
array.unshift(:first)   # array is now [:first, 1, 2]

shifted_value = array.shift   # array is now [1, 2]



# parallel assignments:
first_name, last_name = ["John", "Smith"]   #first = john, last = smith
# ***same result if you provide too many values

# if given too few values, the value will be assigned to the first variable and the second variable will return nil
first_name, last_name = ["Cher"]  #first = "Cher", last = nil


# splat operator: second value will be assigned as the rest of the values
first_name, *last_name = ["John", "Smith", "III"]

# with splat, don't have to specify number of arguments.
# can be used to grab segment of arrays, or to separate an array into multiple arguments
first, *rest, last = ["a", "b", "c", "d"] #first = a; rest = b, c; last = d
# note that rest is still an array

# if given subarray as argument, it is treated as one value.
first_name, last_name = [["Willie", "Rae"], "Johnson"]








