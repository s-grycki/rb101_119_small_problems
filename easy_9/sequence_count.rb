=begin
Problem: Take two integers as an argument. The first is a count, and the second is the
first number for how many sequences to create. Each preceding integer should be a multiple
of the starting number

-Input: Integer 1 as number of array elements, Integer 2 as starting value
-Output: Array of multiples

-Rules:
- Count argument will always be 0 or greater
- Starting number can be any integer value
- If the count is 0, an empty list should be returned

Examples:
sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []

Data Structures:
Integers, Array

Algorithm:
new_array = [int2]
i = 2
int2 - 1.times do
  new_array.push(int2 * i)
  i += 1

RETURN new_array

Code:
=end

# Alternate solution
def sequence(int1, int2)
  return [] if int1.zero?
  array = [int2]
  i = 2
  (int1 - 1).times do
    array << (int2 * i)
    i += 1
  end
  array
end

def sequence(count, first)
  (1..count).map { |num| num * first }
end

p sequence(5, 1)
p sequence(4, -7)
p sequence(3, 0)
p sequence(0, 1000000)