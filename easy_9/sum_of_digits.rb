=begin
Problem: Take a positive integer and return sum of the digits. Don't use any basic looping
constructs(while, until, loop, and each).

-Input: Integer
-Output: Sum of integers

-Rules:
- 

Examples:
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

Data Structures:
Integer, Array

Algorithm:
SET each integer value into an array and sum the values

Code:
=end

# Alternate solution
def sum(integer)
  integer.digits.sum
end

def sum(integer)
  integer.to_s.chars.map(&:to_i).inject(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45