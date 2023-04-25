=begin
Problem: Take two arrays of numbers and return a new array containing the product from
each pair of numbers sharing the same index. Assume both arguments contain the same number
of elements

-Input: Two arrays of integers
-Output: New array containing products of shared indexes

-Rules:
- Multiply elements sharing an index
- Both arrays have same number of elements

Examples:
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

Data Structures:
Integer, Array

Algorithm:
array1.map.with_index do |int,idx|
  array1[idx] * array2[idx]
end

Code:
=end


# Alternate Solution
=begin
def multiply_list(array1, array2)
  array1.map.with_index { |int,idx| array1[idx] * array2[idx] }
end
=end

def multiply_list(array1, array2)
  array1.zip(array2).map { |arr| arr.inject(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11])