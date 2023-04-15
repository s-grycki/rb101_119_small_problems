=begin
Problem: Write two methods that take a string input of hh:mm and return the
minutes before or after midnight as an integer

- Input: String in 24 hour format hh:mm
- Output: Integer of minutes before or after midnight

-Rules:
- Cannot use Ruby's date/time classes
- 24 hour format hh:mm
- Works if time input == '24:00' and returns 0
- Disregard daylight savings time
- Hours must be less than or equal to 24
- Minutes must be less than 60
- Return value should be in 0..1439 range

Examples:
after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0

Data Structures:
Integer, String

Algorithm:
SET MINUTES = 60
SET HOURS = 24
SET DAY = MINUTES * HOURS

SET hh = string.slice(0,2).to_i
SET mm = string.slice(3,2).to_i
SET total = (hh % HOURS) * MINUTES + mm IF after_midnight
SET total = (-hh % HOURS) * MINUTES - mm IF before_midnight
RETURN total 


Code:
=end

MINUTES = 60
HOURS = 24
DAY = MINUTES * HOURS

def after_midnight(string)
  hh, mm = string.split(':').map(&:to_i)
  (hh % HOURS) * MINUTES + mm
end

def before_midnight(string)
  minutes_before = DAY - after_midnight(string)
  minutes_before != DAY ? minutes_before : 0
end

after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0