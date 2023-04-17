=begin
Problem: Write a method that takes a single array and returns a nested array of two
with each containing different halves of the input array. If the original array has
an odd number of elements, then the middle element should be placed in the first array

- Input: Single array of elements
- Output: A pair of nested arrays from the input

-Rules:
- Problem implies need to return new array
- First nested array will have one more element if input is odd
- The pair of arrays will be split based on original order

Examples:
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

Data Structures:
Arrays

Algorithm:
SET length = half of array length rounded up
SET idx = 0
Partition the input array into two arrays
  IF number of current element <= length
    send to array 1
  ELSE
    send to array 2
END
RETURN partitioned array

Code:
=end

def halvsies(array)
  length = (array.length / 2.0).ceil
  idx = 0
  array.partition do
    idx += 1
    idx <= length
  end
end

p halvsies([1, 2, 3, 4])
p halvsies([1, 5, 2, 4, 3])
p halvsies([5])
p halvsies([])