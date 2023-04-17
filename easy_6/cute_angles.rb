=begin
Problem: Write a method that takes a floating point number and returns a string of
3 values: degrees, minutes, seconds - where degrees represents the whole number, and
minutes/seconds are divided between the remainder

- Input: Float 
- Output: String (degrees - as whole number, minutes & seconds - times 60)

-Rules:
- Degrees represented by degree symbol
- Minutes represented by single quote '
- Seconds represented by double quote "
- Edge case if angle is between 0 and 360 degrees
- Floor rounded value represents angle
- Remainder * 60 represents minutes/seconds
- Zero and single digit values should have a leading 0

Examples:
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

Data Structures:
Floar, String

Algorithm:
Check if angle is between 0-360
angle % 360 IF False
SET degrees, time = float.divmod(1)
SET time = time * 60
minutes, seconds = time.divmod(1)
SET seconds = seconds * 60
RETURN (degree + minutes + seconds)
FORMAT for leading zeroes and proper suffix endings

Code:
=end

DEGREE = "\xC2\xB0"
TIME_CEILING = 60
ROUNDER = 1
ANGLE_LIMIT = 360

def dms(float)
  float = bounds_check(float) if !(float.between?(0, 360))
  degrees, time = float.divmod(ROUNDER)
  minutes, seconds = (time * TIME_CEILING).divmod(ROUNDER)
  seconds = (seconds * TIME_CEILING).round
  minutes, seconds = time_round(minutes, seconds) if seconds == TIME_CEILING
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

def time_round(minutes, seconds)
  minutes += ROUNDER
  seconds = 0
  [minutes, seconds]
end

def bounds_check(float)
  float % ANGLE_LIMIT
end

p dms(30)
p dms(76.73)
p dms(254.6)
p dms(93.034773)
p dms(0)
p dms(360)
p dms(400)
p dms(-40)
p dms(-420)