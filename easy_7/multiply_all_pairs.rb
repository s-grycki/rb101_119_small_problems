=begin
Problem: Take two arrays of numbers and return a new array that contains the product of
every pair between the two arrays. Sort the final return value. Assume neither argument is
empty

-Input: Two arrays of integers 
-Output: New array containing list of products between two arrays sorted

-Rules:
- Final return length of array1 * array2
- Sort the final return value

Examples:
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

Data Structures:
Arrays, Integers

Algorithm:


Code:
=end


def multiply_all_pairs(array1, array2)
  array1.map do |int1|
    array2.map { |int2| int1 * int2 }
  end.flatten.sort
end

def multiply_all_pairs(array1, array2)
  array1.product(array2).map { |arr| arr.inject(:*) }.flatten.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])