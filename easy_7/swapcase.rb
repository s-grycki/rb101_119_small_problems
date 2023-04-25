=begin
Problem: Take a string argument and return a new string where the letter cases are swapped.
All other characters should be ignored

-Input: CamelCase string
-Output: New reversed cAMELcASE version of input

-Rules:
- Ignore non-alphabetic characters
- Cannot use String#swapcase

Examples:
swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

Data Structures:
String, Array

Algorithm:
SET LOWER_HASH = ([['a' => 'A']]).to_h
SET UPPER_HASH = ([['A' =>'Z']]).to_h

string.chars.map do |wletter|
  if LOWER_ARRAY.include?(letter)
    letter = LOWER_ARRAY(letter)
  elsif UPPER_ARRAY.include?(letter)
    letter = UPPER_ARRAY(letter)
  else
    letter
  END IF
END LOOP
RETURN string.chars.map.join

Code:
=end

# Alternate Solution
=begin
LOWER_HASH = {}
UPPER_HASH = {}

up = ('A'..'Z').to_a
down = ('a'..'z').to_a

down.each_with_index { |char, idx| LOWER_HASH[char] = up[idx] }
up.each_with_index { |char, idx| UPPER_HASH[char] = down[idx] }


def swapcase(string)
  string.chars.map do |letter|
    LOWER_HASH.include?(letter) ? LOWER_HASH[letter] : UPPER_HASH[letter]
    letter
  end.join
end
=end

def swapcase(string)
  string.chars.map { |letter| letter == letter.upcase ? letter.downcase : letter.upcase }.join
end



p swapcase('CamelCase')
p swapcase('Tonight on XYZ-TV')