=begin
Problem: Write a method called include? that takes an array and a search value as
arguments. The method should return true if the search value is in the array, false
otherwise. Do not use Array#include? in your solution

- Input: Array of values and a search value
- Output: Boolean based on if search value is in the array

-Rules:
- Do not use include?

Examples:
include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

Data Structures:
Array, Boolean

Algorithm:
Select all values in array that equal criteria
Check if the return value is empty

Code:
=end

# Alternate solution
=begin
def include?(array, criteria)
  !(array.select { |val| criteria == val }.empty?)
end
=end

def include?(array, criteria)
  array.any?(criteria)
end

p include?([1,2,3,4,5], 3)
p include?([1,2,3,4,5], 6)
p include?([], 3)
p include?([nil], nil)
p include?([], nil)