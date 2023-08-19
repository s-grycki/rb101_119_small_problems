=begin
PROBLEM: (Start with inputs/outputs if confused. 
Read Problem -> See examples -> Ask questionss)
Return the number of Friday the 13th in a given year as an argument
Input: Year as integer greater than 1752
Output: Integer as number of Friday 13ths
Explicit Rules: (Also clarifies edge cases and questions)
  - Assume Gregorian calender is used

Implicit Rules:
  - 


EXAMPLES:
friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2


DATA STRUCTURES: (Update co-currently with algorithm, if needed)
  - 

<====== THOUGHT PAD ======>
Should look in date or time classes in API
<=========================>


Algorithm: (View as series of steps. Start high level on complex problems and
think about extracting to helper methods)
  - Set year to new year object with input as argument
  - Count the number of 13ths
  - Count how many of these are also Fridays
  - Return as integer 

=end

require 'date'

def friday_13th(int)
  year = Date.new(int, 12, 31)
  valid_days = []
  Date.new(int).upto(year) do |date|
    valid_days << date.to_s if date.mday == 13 && date.friday?
  end
  valid_days.count
end



p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
