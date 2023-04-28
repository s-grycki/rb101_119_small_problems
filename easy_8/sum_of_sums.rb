=begin
Problem: Take an array of numbers and return the sum of the sums for each leading
subsequence for that array. Assume the array will always contain at least 1 number

-Input: Array of integers
-Output: Integer representing sum of sums

-Rules:
- Start with first value and then add the indrementing sums

Examples:
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

Data Structures:
Arrays, Integers

Algorithm:
SET val = 0
array.each_with_index do |int,idx|
  val += (array[0..idx].inject(:+))
end
RETURN val

Code:
=end

def sum_of_sums(array)
  val = 0
  array.each_with_index { |int,idx| val += array[0..idx].sum }
  val
end

p sum_of_sums([3, 5, 2])
p sum_of_sums([1, 5, 7, 3])
p sum_of_sums([4])
p sum_of_sums([1, 2, 3, 4, 5])