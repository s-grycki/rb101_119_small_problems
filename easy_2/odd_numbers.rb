=begin
PROBLEM: Print all odd numbers from 1..99 with each on a seperate line

  - Input: Range (1..99)
  - Output: Odd numbers on seperate lines
  - Rules:
    - 

EXAMPLES:

DATA STRUCTURE:
Range, Array

ALGORITHM:
  - Iterate through array(1..99)
    - If array value is odd
      - output value

=end

Array(1..99).each { |int| puts int if int.odd? }
1.upto(99) { |int| puts int if int.odd? }
