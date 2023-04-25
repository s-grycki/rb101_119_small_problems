=begin
Problem: Take two arrays as arguments, and return a new array containing the elements of
both in alternating order - staring with the first array. Assume input arrays are non-empty
and that they have the same number of elements

-Input: Two arrays containing the same number of elements
-Output: A new array the length of both combined with alternating elements

-Rules:
- Start with element at index 0 for first array and end with -1 index at second array
- All inputs non-empty
- All inputs have same number of elements
- Return new array

Examples:
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

Data Structures:
Arrays

Algorithm:
SET new_array = []
FOR length of an input array
  PUSH array1[idx], array2[idx] onto new_array
RETURN new array

Code:
=end

# Alternate Solution
=begin
def interleave(array1, array2)
  new_array = []
  array1.length.times.with_index do |_,idx|
    new_array << array1[idx] << array2[idx]
  end
  new_array
end
=end

def interleave(array1, array2)
  array1.zip(array2).flatten(1)
end

p interleave([1, 2, 3], ['a', 'b', 'c'])