# 1. Using 'each' method

my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
my_array.each do |element|
  puts element
end

puts
#alternative code
my_array.each {|element| puts element}

puts
#2

my_array.each do |element|
  if element > 5
    puts element
  end
end

puts

#alternative code
my_array.each{|element| puts element if element > 5}

puts

#3. selecting odd number from array
odd_array =[]
odd_array = my_array.select do |element|
   element%2 !=0
end

puts odd_array

puts

#alternative code
odd_array = my_array.select {|element| element%2 !=0}
puts odd_array

puts

# or

odd_array = my_array.select {|element| element.odd? }
puts odd_array

puts

#4. append "11" to array

my_array << 11
puts my_array

puts

# prepend "0" to the beginning
my_array.unshift(0) 
puts my_array

puts

#5 get rid of "11" and append "3"

my_array.pop
my_array << 3
puts my_array

puts

#6 get rid of duplicates without removing any one value.
puts my_array.uniq
puts
puts my_array
puts

#7 What is the difference between an Array and a Hash?
# Arrays are ordered, integer-indexed collections of any object.
# a Hash is a data structure that is collection of key-value pairs. Although similar to an Array,
# indexing is done via arbitrary keys of any object type (not an integer index).
# Hashes enumerate their values in the order that the corresponding keys were inserted.

#8
# Hash using Ruby 1.8

#numbers = { :one, 1, :two, 2, :three, 3}

# Hash using Ruby 1.9

numbers = { "one" => 1, "two" => 2, "three" => 3}

numbers = { :one => 1, :two => 2, :three => 3}

# When the keys are symbols 1.9 supports a syntax where the colon moves to the end of the hash key
# followed by the value with or without a space between key and value
numbers = { one: 1, two: 2, three: 3}

numbers = { one:1, two:2, three:3}

#9

h = {a:1, b:2, c:3, d:4}

puts h[:b]
puts

#10 add a key:value pair

h[:e] = 5

puts h
puts

#11 removing all key:value pairs less than 3.5

h.delete_if {|key, value| value < 3.5}
puts h
puts

#Hash values can be Arrays

hvalue_array = {ava:[1,2,3], bva:['Bing Crosby', 'Elvis Presley', 'Jim Morrison']}
puts 'Hash where values are arrays: ' + hvalue_array.to_s
puts
puts hvalue_array[:bva]
puts

# An array of Hashes
arr_hashes = []
a = {tom:1, jim:2}
arr_hashes[0] = a
puts arr_hashes
puts
b = {"one"=>1,"two"=>2,"three"=>3}
arr_hashes << b
puts arr_hashes
puts
