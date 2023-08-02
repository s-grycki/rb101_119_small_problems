=begin
  PROBLEM: Write an xor method that takes two arguments and returns true if
  exactly one argument is truthy, false otherwise
  Input: Two truthy/falsy expressions
  Output: Boolean true/false
  Rules:
    - Make sure to return boolean

  EXAMPLES:
  xor?(5.even?, 4.even?) == true
  xor?(5.odd?, 4.odd?) == true
  xor?(5.odd?, 4.even?) == false
  xor?(5.even?, 4.odd?) == false

  DATA STRUCTURES:

  ALGORITHM:
    - If both inputs are truthy
      - Return false
    - If both inputs are falsy
      - Return false
    - If input a is truthy, but input b is falsy
      - Return true
    - If input a is falsy, but input b is truthy
      - Return true
=end



def xor?(condition1, condition2)
  return true if (condition1 && !condition2) || (!condition1 && condition2)

  false
end

def xor?(input_a, input_b)
  if (input_a && input_b) || ( !(input_a) && !(input_b) )
    false
  else
    true
  end
end

def xor?(input_a, input_b)
  if (!input_a && input_b) || (input_a && !input_b) 
    true
  else 
    false
  end 
end 

def xor?(input_a, input_b)
  !input_a != !input_b
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
