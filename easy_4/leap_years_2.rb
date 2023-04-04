=begin
Problem: Continuation of leap years 1:
The British Empire didn't adopt the Gregorian calender until
1752, which was a leap year. Prior to 1752, the Julian calender was used.
Under the Julian Calender, leap years occured in ANY year evenly divisible
by 4. Update the method to determine leap years before AND after 1752

-Input: Integer
-Output: Boolean

-Rules:
- Leap years are evenly divisible by 4, UNLESS it's also divisible by 100
- Exception is when year is evenly divisible by both 100 and 400
- All inputs assumed positive
- If the year is before 1752, ANY year evenly divisble by 4 is a leap year

Algorithm:
GET year
IF year < 1752
  year % 4 == 0
ELSE
  (year % 4 == 0 && year % 100 != 0) || (year % 100 == 0 && year % 400 == 0)
END IF   

Code:
=end

def leap_year?(year)
  return year % 4 == 0 if year < 1752
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
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true