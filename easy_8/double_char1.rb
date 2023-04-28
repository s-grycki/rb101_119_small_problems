=begin
Problem: Take a string, and return a new string in which every character is doubled

-Input: String
-Output: New string with every character doubled

-Rules:
- Return a new string

Examples:
repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

Data Structures:
String, Array

Algorithm:
string.chars.map do |char|
  char * 2
end.join

Code:
=end

def repeater(string)
  string.chars.map { |char| char*2 }.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''