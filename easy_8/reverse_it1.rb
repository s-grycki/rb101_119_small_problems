=begin
Problem: Take a string, and return a new string with the words in reverse order

-Input: String
-Output: New string with every word in reverse order

-Rules:
- Return a new string

Examples:
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

Data Structures:
String, Array

Algorithm:
array = string.split
number = array.length / 2
number.times do |idx|
  array[idx], array[-(idx + 1)] = array[-(idx + 1)], array[idx]
end
RETURN array.join

Code:
=end

# Alternate solution
def reverse_sentence(string)
  array = string.split
  number = array.length / 2
  number.times do |idx|
    array[idx], array[-(idx + 1)] = array[-(idx + 1)], array[idx]
  end
  array.join(' ')
end

def reverse_sentence(string)
  string.split.reverse.join(' ')
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''