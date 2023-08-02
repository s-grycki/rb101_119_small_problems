=begin
PROBLEM: Ask user for length and width of room in meters and display
area of the room in square meters and square feet
  - Input: Length and width of room
  - Output: String with measurements interpolated
  - Rules:
    - Don't worry about input validation for this program

EXAMPLES:
Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).

DATA STRUCTURE:

ALGORITHM:
  - Initialize constant for meters to feet
  - Get room length in meters
  - Get room width in meters
  - Calculate square meters and square centimeters
  - Output string to user

  - Initialize constant for feet to inches
  - Initialize constant for inches to centimeters
=end

METERS_TO_FEET = 10.7639
FEET_TO_INCHES = 144
INCHES_TO_CENTIMETERS = 6.4516

def square_meters
  puts '>> Enter the length of the room in meters:'
  length = gets.chomp.to_f
  puts '>> Enter the width of the room in meters:'
  width = gets.chomp.to_f

  meters = (length * width).round(2)
  feet = format("%.2f", meters * METERS_TO_FEET)

  puts "The area of the room is #{meters} square meters (#{feet} square feet)."
end


def square_feet
  puts '>> Enter the length of the room in feet:'
  length = gets.chomp.to_f
  puts '>> Enter the width of the room in feet:'
  width = gets.chomp.to_f

  feet = (length * width).round(2)
  inches = (feet * FEET_TO_INCHES).round(2)
  centimeters = format("%.2f", inches * INCHES_TO_CENTIMETERS)

  puts "The area of the room is #{feet} square feet (#{inches} square inches " +
  "and #{centimeters} square centimeters)."
end

puts "Would you like to calculate in feet or meters?"
ans = gets.chomp.downcase
if ans.start_with?('f')
  square_feet
elsif ans.start_with?('m')
  square_meters
end
