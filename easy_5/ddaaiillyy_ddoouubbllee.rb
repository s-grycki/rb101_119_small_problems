=begin
Problem: Write a method that takes a string argument and returns a new
string with all consecutive duplicate characters removed. Do not use
String#squeeze

- Input: String with consecutive duplicate characters allowed
- Output: New string without any consecutive duplicate characters

-Rules:
- Repeat characters allowed. Only delete consecutive
- Return a new string
- Do not use String#duplicate

Examples:
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

Data Structures:
Strings

Algorithm:
FOR each element IN string
  IF next string element == current string element
    REMOVE next element
  END IF
END LOOP
RETURN new string

Code:
=end

def crunch(string)
  char_array = string.split(//)
  i = 0
  char_array = char_array.reject do |char|
    i += 1
    char == char_array[i]
  end
  char_array.join.rstrip
end

p crunch('ddaaiillyy ddoouubbllee')
p crunch('4444abcabccba')
p crunch('ggggggggggggggg')
p crunch('a')
p crunch('')