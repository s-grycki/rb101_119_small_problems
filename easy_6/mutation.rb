=begin
Problem: What will the code print and why?

Data Structures:
Arrays

Algorithm:
array1 = array of strings
array2 = empty array
FOR each value IN array1
  push value onto array 2
END FOR # array1 and array2 have SAME string elements, but are different objects
FOR each value IN array1
  Capitalize! the value if value starts with 'C' OR 'S'
END FOR # Will capitalize values in array1 and array2 because it's mutating elements
Prints value of array2 (same value of array1)

Code:
=end

# Alternate solution
=begin
def include?(array, criteria)
  !(array.select { |val| criteria == val }.empty?)
end
=end

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# => 
# Moe
# Larry
# CURLY
# SHEMP
# Harpo
# CHICO
# Groucho
# Zeppo

# array1 and array2 are initialized as different objects, but on the third line, we
# are populating array2 with copies of the ORIGINAL string elements from array1. They 
# are two different array objects, but their contents are pointing to the same place in
# memory. This means that when we mutate INDIVIDUAL elements in one array on line 4, 
# it will be reflected in both arrays. That's why we get our output. Not understanding
# this pass by reference behavior with mutating methods can get us in trouble if we need
# to keep the values of one array the same. In order to avoid this, we need to clone the
# INDIVIDUAL ELEMENTS (NOT THE ARRAY) into the new variable