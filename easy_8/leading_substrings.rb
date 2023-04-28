=begin
Problem: Take a string of characters and return an array of possible substrings starting
from the first character. This should be ordered from smallest to largest

-Input: String of characters
-Output: Array of all possible substrings

-Rules:
- Order from smallest to largest

Examples:
leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

Data Structures:
String, array

Algorithm:
SET array = string.chars
array.map.with_index do |char, idx|
  string[0..idx]
end

Code:
=end

def leading_substrings(string)
  string.chars.map.with_index { |_,idx| string[0..idx] }
end


p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']