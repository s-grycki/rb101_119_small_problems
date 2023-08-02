=begin
  PROBLEM: Solicit 6 numbers from the user, then print a message saying if
  the 6th number appears amongst the first 5
  Input: 6 integers
  Output: String message
  Rules:
    - Put first 5 numbers into array

  EXAMPLES:
  ==> Enter the 1st number:
  25
  ==> Enter the 2nd number:
  15
  ==> Enter the 3rd number:
  20
  ==> Enter the 4th number:
  17
  ==> Enter the 5th number:
  23
  ==> Enter the last number:
  17
  The number 17 appears in [25, 15, 20, 17, 23].

  DATA STRUCTURES:
  Array

  ALGORITHM:
    - Initialize a new array
    - Get an integer 5 times from user
    - Append integer to array each time
    - Get a 6th integer from user
    - Check if integer appears in array
    - If it does
      - Tell user it does in string
    - If it doesn't
      - Tell user it doesn't in string
=end

def get_numbers
  place = %w(1st 2nd 3rd 4th 5th)
  place.each_with_object([]) do |time, arr|
    puts "==> Enter the #{time} number:"
    int = gets.chomp.to_i
    arr << int
  end
end

def get_check_number
  puts "==> Enter the last number:"
  int = gets.chomp.to_i
end

numbers_array = get_numbers
check_number = get_check_number

if numbers_array.include?(check_number)
  puts "The number #{check_number} appears in #{numbers_array}"
else
  puts "The number #{check_number} does not appear in #{numbers_array}"
end
