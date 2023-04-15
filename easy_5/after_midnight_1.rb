=begin
Problem: Write a method that regards minutes from midnight with negative and positive
integers. If positive, it's after midnight. If negative, it's before midnight. Use a
24 hour format (hh:mm). This should work with any integer input

- Input: Positive or negative integer representing minutes from midnight
- Output: String in 24 hour format hh:mm

-Rules:
- Cannot use Ruby's date/time classes
- 24 hour format hh:mm
- Works if a time is greater than 1 day (1440 minutes)
- Disregard daylight savings time
- Hours must be less than 24
- Minutes must be less than 60

Examples:
time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

Data Structures:
Integer, String

Algorithm:
SET MINUTES = 60
SET DAY = 1440
SET integer = integer % DAY
SET hh, mm = integer.divmod(MINUTES)
RETURN formated hh:mm

Code:
=end

# Eliminates magic numbers
MINUTES = 60
DAY = 1440 # 60 * 24

def time_of_day(integer)
  integer = integer % DAY # handles negatives and values greater than 1440
  hh, mm = integer.divmod(MINUTES) # parallel sets hours and minutes using divmod
  format('%02i:%02i', hh, mm) # correctly formats return string in all cases
end


p time_of_day(0)
p time_of_day(-3)
p time_of_day(35)
p time_of_day(-1437)
p time_of_day(3000)
p time_of_day(800)
p time_of_day(-4231)