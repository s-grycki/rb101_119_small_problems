=begin
Problem: Extend the solution from exercise 7 to work with signed numbers.
Allow for leading + or - signs and return the appropriate value.
Return positive if no sign is given.
Assume the string will always contain a valid number

-Input: String
-Output: Signed integer

Examples:
string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100

Data Structures:
String, Hash, Array, Integer

Algorithm:
SET DIGITS = { '0' => 0, '1' => 1 etc. }
GET string
SET sign = string.slice(0) IF string[0] == '+' OR '-' 
SET digits = FOR each char IN string
  SET char = DIGITS[char]
END FOR LOOP
SET value = 0
FOR each digit IN digits
  SET value = 10 * value + digit
END FOR LOOP
SET value = value - (value * 2) IF sign == '-'
RETURN value

Code:
=end

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_array(string)
  string.chars.map { |char| DIGITS[char] }
end

def string_to_integer(digits, sign)
  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value -= value * 2 if sign == '-'
  value
end

def string_to_signed_integer(string)
  sign = string.slice!(0) if string[0] == '+' || string[0] == '-'
  digits = string_to_array(string)  
  string_to_integer(digits, sign)
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100