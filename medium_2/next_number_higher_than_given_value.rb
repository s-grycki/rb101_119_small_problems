=begin
PROBLEM: (Start with inputs/outputs if confused. 
Read Problem -> See examples -> Ask questionss)
Take an integer as an argument and return the next valid number greater than
input. Return error message if there is no next valid number
Input: Integer
Output: Integer as next valid number
Explicit Rules: (Also clarifies edge cases and questions)
  - A valid number is defined as a multiple of 7 AND whose digits occur exactly
  once each AND it's odd...
  - Return error if no possible next number

Implicit Rules:
  - numbers 10_000_000_000 and higher invalid


EXAMPLES:
featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements


DATA STRUCTURES: (Update co-currently with algorithm, if needed)
  - 

<====== THOUGHT PAD ======>
Iterate through each higher number by 7 once input number is dividble by 7
<=========================>


Algorithm: (View as series of steps. Start high level on complex problems and
think about extracting to helper methods)
  - Check if input integer is divisble by 7
  - If not, then increment by 1 until it is
  - If this number has all unique digits
    - Return new number

  - Set int_array to number and 7
  - Iterate over each number in int_array
    - Set first element to addition of second element
    - If this number doesn't have repating digits
      - Return number
    - Else
      - Countinue loop
      - Return error if number > 9_999_999_999

=end

#MAXIMUM = 9_999_999_999
#
#def featured(int)
#  return error if int >= MAXIMUM
#  rounded_int = round(int)
#  loop do
#    return rounded_int if no_repeats?(rounded_int) & rounded_int.odd?
#    return error if rounded_int >= MAXIMUM
#    rounded_int += 7
#  end
#end
#
#def error
#  '-> There is no possible number that fulfills those requirements'
#end
#
#def round(int)
#  loop do
#    int += 1
#    break int if int % 7 == 0
#  end
#end
#
#def no_repeats?(rounded_int)
#  chars = rounded_int.to_s
#  outer_idx = 0
#  until chars.size <= outer_idx
#    inner_idx = 1 + outer_idx
#    until chars.size <= inner_idx
#      return false if chars[outer_idx] == chars[inner_idx]
#      inner_idx += 1
#    end
#    outer_idx += 1
#  end
#  true
#end
#
#p featured(12) == 21
#p featured(20) == 21
#p featured(21) == 35
#p featured(997) == 1029
#p featured(1029) == 1043
#p featured(999_999) == 1_023_547
#p featured(999_999_987) == 1_023_456_987
#
#p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements




# SECOND SOLUTION


=begin
PROBLEM: (Start with inputs/outputs if confused. 
Read Problem -> See examples -> Ask questionss)
Take an integer as an argument and return the next valid number greater than
the argument
Input: Integer
Output: Valid number
Explicit Rules: (Also clarifies edge cases and questions)
  - A valid number is described as odd, a multiple of 7, and occuring once
  - Return an error message if there is no valid number (past maximum)

Implicit Rules:
  - numbers higher than 9_876_543_210 invalid (last good number)
  - Even if input is valid return next valid

EXAMPLES:
featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements


DATA STRUCTURES: (Update co-currently with algorithm, if needed)
  - Array (to check for unique digits as elements)

<====== THOUGHT PAD ======>
Rationalize input to multiple of 7 and odd for simple incrementing
<=========================>


Algorithm: (View as series of steps. Start high level on complex problems and
think about extracting to helper methods)

  RATIONALIZE INPUT
    - Increment int by 1 (guards against self-return)
    - Until input is divisble by 7 and odd
      - Increment by 1
    - Return rationalized input
  
  CHECK FOR FEATURED NUMBER
    - Loop
      - Return integer input if all unique digits
      - Return error if greater than MAXIMUM
      - integer += 14
    - End loop

=end

MAXIMUM = 9_876_543_210

def featured(integer)
  integer = round(integer)
  loop do
    return integer if (no_repeats?(integer))
    return error if integer >= MAXIMUM
    integer += 14
  end
end
    
def error
  'There is no possible number that fulfills those requirements'
end

def round(int)
  int += 1
  int += 1 until int % 7 == 0 && int.odd?
  int
end

def no_repeats?(integer)
  int_array = integer.digits.reverse
  int_array.uniq == int_array
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
