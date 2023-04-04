=begin
Problem: Write a method that takes an array of numbers,
and returns an array with the same number of elements,
and each element has the running total from the original array

-Input: Array
-Output: Array of summed values

Examples:
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

Data Structures:
Arrays, Integers

Algorithm:
GET array
RETURN array IF array.empty?
SET idx = 0
SET new_array = array[0]
UNTIL idx == array.length - 1
  new_array.push(new_array[idx] + array[idx + 1])
  i += 1
END UNTIL
RETURN new_array

Code:
=end

def running_total(array)
  return array if array.empty?
  idx = 0
  new_array = [array[0]]
  until idx == array.length - 1
    new_array.push(new_array[idx] + array[idx + 1])
    idx += 1
  end
  new_array
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []