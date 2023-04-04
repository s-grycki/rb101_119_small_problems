=begin
Problem: Write a method that takes a positive integer or zero,
and converts it to a string representation

-Input: Integer
-Output: String

-Rules:
-No inputs should be negative

Examples:
integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

Data Structures:
Integer, Hash, Array, String

Algorithm:
SET STRINGS = {0 => '0', 1 => '1' etc.}
GET integer
SET integer = integer.abs
SET integer_array = integer.digits.reverse
FOR each integer IN integer_array
  SET integer = STRINGS[integer]
END FOR LOOP
SET string = integer_array.join
RETURN string

Code:
=end

STRINGS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(integer)
  integer = integer.abs
  integer_array = integer.digits.reverse
  integer_array = integer_array.map{ |integer| STRINGS[integer] }
  string = integer_array.join
  string
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'