=begin
Problem: Return the 2nd to last word from a string argument. Words are seperated by spaces.
Assume input string will always contain at least two words. Then, write a method that retrieves
the middle word of a phrase/sentence. Consider what edge cases this would have

-Input: String of words
-Output: 2nd to last word from input string

-Rules:
- Words seperated by spaces
- Input will always have at least 2 characters

Examples:
penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'

Data Structures:
String, Array

Algorithm:


Code:
=end

def penultimate(string)
  string.split[-2]
end

p penultimate('last word')
p penultimate('Launch School is great!')

def middle(string)
  array = string.split
  idx = array.length / 2
  array.length.odd? ? array[idx] : array[idx-1, idx].join(' ') 
end

p middle('This is the middle character')
p middle('What about even strings?')