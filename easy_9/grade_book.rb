=begin
Problem: Determine the mean(average) of three integer scores and return a letter grade as a
string. This program only cares about values between 0-100, so there's no need to check for
values less than 0 or greater than 100

-Input: Three integers representing a grade out of 100
-Output: A letter grade based on the average of the 3 scores

-Rules:
- 

Examples:
get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"

Data Structures:


Algorithm:
average = (int1 + int2 + int3) / 3
case average
when >= 90 'A'
when >= 80 'B'
when >= 70 'C'
when >= 60 'D'
else 'F'

Code:
=end

def get_grade(int1, int2, int3)
  average = (int1 + int2 + int3) / 3
  case average
  when 90..100 then 'A'
  when 80..89 then 'B'
  when 70..79 then 'C'
  when 60..69 then 'D'
  else 'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"