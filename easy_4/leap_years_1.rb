=begin
Problem: Leap years occur in every year that is evenly divisible by 4,
unless the year is also divisible by 100. If year is evenly divisible by 100,
then it is not a leap year unless the year is evenly divisble by 400

Assume this rule good for any year greater than 0. Write a method that takes
any year greater than 0 as input, and returns true if it is a leap year,
false otherwise

-Input: Integer
-Output: Boolean

-Rules:
- Leap years are evenly divisible by 4, UNLESS it's also divisible by 100
- Exception is when year is evenly divisible by both 100 and 400
- All inputs assumed positive

Examples:
leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true

Data Structures:
Integer

Algorithm:
GET year
IF (year % 4 == 0 && year % 100 != 0) || (year % 100 == 0 && year % 400 == 0)
  RETURN true
ELSE
  RETURN false
END IF   

Code:

=end

def leap_year?(year)
  (year % 4 == 0 && year % 100 != 0) || (year % 100 == 0 && year % 400 == 0)
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true