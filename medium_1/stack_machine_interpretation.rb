=begin
PROBLEM: (Start with inputs/outputs if confused. 
Read Problem -> See examples -> Ask questionss)
Write a program emulating a mini stack-and-register based programming language
with the commands: n, PUSH, ADD, SUB, MULT, DIV, MOD, POP, PRINT
Input: String as series of executions
Output: Result of string instructions
Explicit Rules: (Also clarifies edge cases and questions)
  - All operations are integer operations
  - Assume all operations are valid
  - Initialize register to 0
  - Register value is not part of the stack
  - Pop topmost value from stack when 2 values needed, then store back in register

Implicit Rules:
  - Commands should be uppercase (except for n)


EXAMPLES:
minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)


DATA STRUCTURES: (Update co-currently with algorithm, if needed)
  - Array (to serve as stack)

<====== THOUGHT PAD ======>
Input commands should be matched to some operation
<=========================>


Algorithm: (View as series of steps. Start high level on complex problems and
think about extracting to helper methods)
  - Set conversions to hash of operation conversions with array or register
  - Set stack to empty array
  - Set register to 0

  PERFORM OPERATIONS
  - Split input string into array of values
  - Iterate over each array value
    - If element as integer back to string equals self
      - It's an integer to store in the register
    - Else
      - It's a command to match with the hash
      - Perform operation in hash with current register value and/or stack

=end



def minilang(command)
  stack = []
  register = 0
  command.split.each do |word|
    case word
    when 'n'     then register = word.to_i
    when 'PUSH'  then stack.push(register)
    when 'ADD'   then register += stack.pop
    when 'SUB'   then register -= stack.pop
    when 'MULT'  then register *= stack.pop
    when 'DIV'   then register /= stack.pop
    when 'MOD'   then register %= stack.pop
    when 'POP'   then register = stack.pop
    when 'PRINT' then puts(register)
    else              register = word.to_i
    end
  end
end

p minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)
