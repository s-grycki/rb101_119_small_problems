=begin
Problem: Take an integer and return it if it's a double number. Otherwise,
return double the input

-Input: Integer 
-Output: Input if double number, else 2 times input

-Rules:
- Double numbers are even and have a left side the same as the right side

Examples:
twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10

Data Structures:
Integer, Array

Algorithm:
array1 = int
check if integer.even? && if first half of integer == second half
  if truthy then return integer
  else return integer * 2

Code:
=end

def twice(integer)
  array = integer.digits.reverse
  array1, array2 = array.partition.with_index { |_,idx| idx < array.length / 2 }
  array1 == array2 ? integer : integer * 2
end

p twice(37)
p twice(44)
p twice(334433)
p twice(444)
p twice(107)
p twice(103103)
p twice(3333)
p twice(7676)
p twice(123_456_789_123_456_789)
p twice(5)