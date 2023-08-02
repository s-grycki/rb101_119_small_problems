=begin
PROBLEM: Take two arguments, a string and a positive integer, and print the string integer times
  - Input: String, Integer
  - Output: String (integer times)
  - Rules:
    - Integer implied positive

EXAMPLES:
  - repeat('Hello', 3)
  Hello
  Hello
  Hello

DATA STRUCTURE:

ALGORITHM:
  - initialize counter variable
  - Iterate integer number of times
    - print string for each iteration
    - counter += 1

=end

def repeat(string, int)
  counter = 0
  until counter == int
    counter += 1
    puts string
  end
end

repeat('Hello', 3)
