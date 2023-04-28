=begin
Problem: Take a string of characters and return an array of possible substrings starting
from the first character. This should be ordered from smallest to largest. Then, return
the possible combinations in decending order with an element removed from the beginning

-Input: String of characters
-Output: Array of all possible substrings in decending order

-Rules:
- Order from smallest to largest
- First line should have all possible substrings
- Following lines should return -1 possible substrings from the beginning

Examples:
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

Data Structures:
String, array

Algorithm:
SET new_array = []
string.length.times do |i|
  SET substring = string[i..-1]
  append leading_substrings with new_array
    SET array = string.chars.map.with_index do |char, idx|
      string[0..idx]
    end
RETURN new_array


Code:
=end

# Alternate solution
=begin
def substrings(string)
  new_array = []
  string.length.times do |idx|
    new_array << leading_substrings(string[idx, string.length])
  end
  new_array.flatten
end
=end

def substrings(string)
  string.length.times.with_object([]) do |idx,array|
    array << leading_substrings(string[idx, string.length])
  end.flatten
end

def leading_substrings(string)
 string.chars.map.with_index { |_,idx| string[0..idx] }
end

p substrings('abcde')