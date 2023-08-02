=begin
PROBLEM: Return the bonus salary given a positive integer and a boolean. If true, return half of integer. Else, 0
  - Input: Integer, boolean
  - Output: Integer
  - Rules:
    - Return half integer if true
    - Return 0 if false

EXAMPLES:
  puts calculate_bonus(2800, true) == 1400
  puts calculate_bonus(1000, false) == 0
  puts calculate_bonus(50000, true) == 25000  

DATA STRUCTURE:

ALGORITHM:
  - If true
    - return integer / 2
  - Else
    - return 0

=end

def calculate_bonus(int, boolean)
  boolean == true ? int / 2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
