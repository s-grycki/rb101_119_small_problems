=begin
Problem: Extend the method in the last exercise to output signed inputs

-Input: Integer
-Output: String

-Rules:
- Add positive sign if positive
- Add negative sign if negative
- Add no sign if 0

Examples:
signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'

Data Structures:
Integer, Hash, Array, String

Algorithm:
SET STRINGS = {0 => '0', 1 => '1' etc.}
GET integer
IF int > 0
  SET sign = '+'
ELSE IF int < 0
  SET sign = '-'
ELSE
  sign = ''
END IF
SET integer = integer.abs
SET integer_array = integer.digits.reverse
FOR each integer IN integer_array
  SET integer = STRINGS[integer]
END FOR LOOP
SET integer_array = integer_array.unshift(sign)
SET string = integer_array.join
RETURN string

Code:
=end

STRINGS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(integer, sign)
  integer = integer.abs
  integer_array = integer.digits.reverse
  integer_array = integer_array.map { |integer| STRINGS[integer] }
  integer_array.unshift(sign)
  string = integer_array.join
end

def signed_integer_to_string(integer)
  sign = case integer <=> 0
  when 1 then '+'
  when -1 then '-'
  else         ''
  end
  integer_to_string(integer, sign)
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'