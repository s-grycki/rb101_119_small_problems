=begin
PROBLEM: Take a positive integer and return a string of alternating 1s and 0s
  - Input: Positive integer
  - Output: String of 10's
  - Rules:
    - Start with 1
    - length should match integer

EXAMPLES:
  puts stringy(6) == '101010'
  puts stringy(9) == '101010101'
  puts stringy(4) == '1010'
  puts stringy(7) == '1010101'  

DATA STRUCTURE:

ALGORITHM:
  - Initialize new string variable
  - Initialize new counter variable = 1
  - Iterate integer number of times
    - If iteration is odd
      - Append '1' to new string
    - If iteration is even
      - Append '0' to new string
  -Return new string
=end

def stringy(int, start = 1)
  binary_string = String.new
  int.times do |i|
    i += 1 if start == 0
    number = i.even? ? '1' : '0'
    binary_string << number
  end
  binary_string
end

def stringy(int, order = 1)
  new_string = ''
  counter = 1
  until counter > int
    if order == 1
      counter.odd? ? new_string << '1' : new_string << '0'
    elsif order == 0
      counter.odd? ? new_string << '0' : new_string << '1'
    end
    counter += 1
  end
  new_string
end

def stringy(int, order = 1)
  (0..int-1).map { |num| num.even? ? order : 1 - order }.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(7, 0) == '0101010'
