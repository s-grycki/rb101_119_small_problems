=begin
Problem: Given a string of all lowercased words and an assortment of non-alphabetic
characters, write a method which returns that string with all non-alphabetic characters
replaced by spaces. If one or more non-alphabetics occur in a row, there should only be
one space

- Input: All lowercase string with assorted non-alphabetics
- Output: All lowercase string with non-alphabetics replaced by spaces

-Rules:
- All characters assumed lowercase letters, spaces, or non-alphabetics
- Return the original string
- There should be no consecutive spaces


Examples:
cleanup("---what's my +*& line?") == ' what s my line '

Data Structures:
Array, String

Algorithm:
SET array = all lowercase letters a-z
FOR each char IN string
  IF char is in array
    NEXT
  ELSE
    substitute char for ' '
  END IF
END LOOP
RETURN original string with duplicate characters removed

Code:
=end

LOWERCASE_CHARS = ('a'..'z').to_a

def cleanup(string)
  string.each_char do |char|
    string.gsub!(char, ' ') if !(LOWERCASE_CHARS.include?(char))
  end
  string.squeeze
end

p cleanup("---what's my +*& line?")