=begin
Problem: Take an array and return every other element starting with even indexes. Solve this in
3 ways

-Input: Array of elements
-Output: Every even index value

-Rules:
- Start at index 0

Examples:
oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []
oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

Data Structures:
Array

Algorithm:
SET new_array = []
FOR every even index IN array
  push value onto new array
RETURN new_array

Code:
=end

def oddities(array)
  new_array = []
  array.each_with_index { |val,idx| new_array << val if idx.even? }
  p new_array
end

def oddities(array)
  p array.select.with_index { |val,idx| idx.even? }
end

def oddities(array)
  p array.each_with_object([]) { |val,arr| arr << val if array.index(val).even? }
end

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []
oddities([1, 2, 3, 4, 1]) == [1, 3, 1]