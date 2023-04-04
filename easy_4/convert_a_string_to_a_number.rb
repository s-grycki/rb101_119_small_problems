=begin
Problem: Write a method that takes a string of digits, and returns the
appropriate number as an integer. Do not use to_i or Integer().
Don't worry about leading signs or invalid characters

-Input: String
-Output: Integer

Examples:
string_to_integer('4321') == 4321
string_to_integer('570') == 570

Data Structures:
String, Array, Hash, Integer

Algorithm:
SET CONVERSION_HASH = {'0' => 0, '1' => 1 etc.}
GET integer_string
SET int_array = []
FOR each integer IN integer_string
  FOR each key IN CONVERSION_HASH
    SET int_array = int_array.push(CONVERSION_HASH[integer_string[i]])
  END FOR LOOP
END FOOP LOOP
SET value = 0
FOR each int IN int_array
  value = 10 * value + int
END FOR LOOP
RETURN value

Code:
=end

CONVERSION_HASH = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_array(integer_string)
  int_array = []
  integer_string.length.times { |i| int_array << CONVERSION_HASH[integer_string[i]] }
  int_array
end

def string_to_integer(integer_string)
  int_array = string_to_array(integer_string)
  value = 0
  int_array.each { |int| value = 10 * value + int }
  value
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570