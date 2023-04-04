=begin
Problem: Write a method that takes two string arguments, determines the longer one,
and returns the result of concatenating the shorter string, the longer string, and
the shorter string again. Assume all strings are different lengths

-Input: 2 Strings
-Output: 1 String

-Rules:
-All strings assumed different lengths
-Start with shorter string

Examples:
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

Data Structures:
-Strings

Algorithm:
GET string1 string2
IF string1.length > string2.length
  RETURN string2 + string1 + string2
ELSE
  RETURN string1 + string2 + string1
END IF

Code:
=end

def short_long_short(string1, string2)
  if string1.length > string2.length
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end



p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"