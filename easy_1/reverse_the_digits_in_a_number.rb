=begin
PROBLEM: Take a positive integer and return that number with each digit reversed
  - Input: Integer
  - Output: New integer with values reversed
  - Rules:
    - Don't worry about leading zeros

EXAMPLES:
reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1

DATA STRUCTURE:
  - Array

ALGORITHM:
  - Set integer input to array with numbers reversed
  - Convert to string
  - Convert each character back to an integer

=end

def reversed_number(int)
  int.digits.join.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1
