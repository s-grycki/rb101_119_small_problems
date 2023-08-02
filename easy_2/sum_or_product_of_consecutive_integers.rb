=begin
PROBLEM: Ask user for integer greater than 0, then ask if they want to
determine sum or product of numbers between 1 and given integer

  - Input: Integer greater than 0
  - Output: Sum or product of all numbers between 1 and input
  - Rules:
    - 

EXAMPLES:

DATA STRUCTURE:
Range, Array

ALGORITHM:
  - Ask user for integer input
  - Set input to absolute value
  - Initialize array of values (1..input)

  - Ask user if they want sum or product

  - If product
    - multiply every value in the array and output value

  - If sum
    - add every value in the array and output value
=end

int = loop do
  puts ">> Please enter an integer greater than 0:"
  int = gets.chomp.to_i.abs
  break int if int > 0
end

values = Array(1..int)

puts ">> Do you want a sum or a product?"
final_value = loop do
  ans = gets.chomp.downcase
  break values.inject(:+) if %w(s sum).include?(ans)
  break values.inject(:*) if %w(p product).include?(ans)
  puts ">> Please select sum or product"
end

puts ">> The product of the integers between 1 and #{int} is #{final_value}."
