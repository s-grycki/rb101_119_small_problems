=begin
PROBLEM: Take a non-empty string and return the middle character(s) of the argument
  - Input: Non-empty string
  - Output: Middle characters
  - Rules:
    - String cannot be empty
    - Return 2 characters if length is even
    - Return 1 character if length is odd

EXAMPLES:
center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

DATA STRUCTURE:

ALGORITHM:
  - Check if string is empty and return error if it is
  - Initialize variable to length of string / 2
  - If string is odd
    - Return string at variable index
  - If string is even
    - Return string at variable index and variable index + 1

=end

def center_of(string)
  return "Please no empty strings" if string.empty?
  idx = string.length / 2
  string.length.odd? ? string[idx] : string[idx-1, 2]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
p center_of('') == 'Please no empty strings'
