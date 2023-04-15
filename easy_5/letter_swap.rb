=begin
Problem: Write a method that takes a string of words seperated by spaces and returns a string
in which the first and last letters of every word are swapped.
Assume all words contain at least one letter and will always be at least one word.
Strings will only contain words and spaces

- Input: String of words seperated by spaces
- Output: String with first and last characters swapped

-Rules:
- Words are seperated by spaces
- Strings will always contain one word
- Words will always contain one element
- Strings only contain words and spaces


Examples:
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

Data Structures:
Strings, Array

Algorithm:
SET array = string.split
SET i = 0
LOOP
  BREAK IF i == array.length
  first_char = array[i][0]
  last_char = array[i][-1]
  first_char, last_char = last_char, first_char
  i += 1
END LOOP
RETURN array.join(' ')

Code:
=end

def swap(string)
  string.split.map do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end.join(' ')
end

p swap('Oh what a wonderful day it is')
p swap('Abcde')
p swap('a')