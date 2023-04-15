=begin
Problem: Determine the ASCII string value of a given string for each character

- Input: String of characters
- Output: Integer of combined ADCII values

-Rules:
- Return 0 if an empty string is passed in

Examples:
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

Data Structures:
String, Array, Integer

Algorithm:
SET value = 0
RETURN 0 IF string is empty
SET each element in string to array
FOR each element in string array w/ idx 
  SET value = value + string[idx].ord
  idx += 1
  BREAK IF i = string.length
END
RETURN string

Code:
=end

def ascii_value(string)
  value = 0
  return 0 if string.empty?
  string.chars.each_with_index do |char, idx|
    value += string[idx].ord
  end
  value
end


p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0