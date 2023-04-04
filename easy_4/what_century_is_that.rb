=begin
Problem: Write a method that takes a year as input and returns the century.
Return value should be string starting with century number and ends with right suffix

-Input: Integer
-Output: String

-Rules:
-Associated values should be in sets of 100
-New century ends in 01
-Strings need appropriate endings concatenated
-Input is assumed positive

Examples:
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

Data Structures:
Integer, String

Algorithm:
GET integer
SET century = (integer / 100) + 1
SET century = century - 1 IF integer % 100 == 0 # solves 00 edge case
SET century = century.to_s
IF century.end_with? 0 || 4 || 5 || 6 || 7 || 8 || 9 || 11 || 12 || 13
  RETURN century + 'th'
ELSE IF century.end_with? 1
  RETURN century + 'st'
ELSE IF century.end_with? 2
  RETURN century + 'nd'
ELSE IF century.end_with? 3
  RETURN century + 'rd'
END IF
=end

CENTURY_DIVIDER = 100
CENTURY_ROUNDER = 1

def century(int)
  century = (int / CENTURY_DIVIDER) + CENTURY_ROUNDER
  century -= CENTURY_ROUNDER if int % CENTURY_DIVIDER == 0
  century = century.to_s
  append_suffix(century)
end

def append_suffix(century)
  end_value = century.to_i % 10
  return (century + 'th') if century.end_with?('11', '12', '13')

  case end_value
  when 1 then century + 'st'
  when 2 then century + 'nd'
  when 3 then century + 'rd'
  else century + 'th'
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'