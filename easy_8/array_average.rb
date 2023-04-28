=begin
Problem: Take an array of integers and return the average of all numbers in the array. The
array will never be empty and the numbers will always be positive integers

-Input: Array of integers
-Output: Integer representing average of all array integers

-Rules:
- Dont use Array#sum

Examples:
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

Data Structures:
Integer, Array

Algorithm:
final_value = 0
FOR each int IN array
  final_value += int
final_value / array.length

Code:
=end

def average(array)
  array.inject(:+) / array.length
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40