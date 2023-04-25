=begin
Problem: Take a string of words and return a new string of the original input, but with
every other letter alternating case - starting with capitalized. All characters count when
when switching. Allow for capitalization reversal depending on an optional second argument

-Input: String of words
-Output: String of input but with alternating case

-Rules:
- Start with capitalization
- All characters count for switching
- Non alphabetics should not be changed in any way

Examples:
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

Data Structures:
String, Array

Algorithm:
string.chars.map.with_index do |char, idx|
  if cpatialize_first
    char = char.upcase if idx.even?
    char = char.downcase if idx.odd?
  else
    do reverse
  END IF
RETURN string.chars.map.join

Code:
=end

def staggered_case(string, capitalize_first = true)
  string.chars.map.with_index do |char, idx|
    if capitalize_first
      idx.even? ? char.upcase : char.downcase
    else 
      idx.even? ? char.downcase : char.upcase
    end
  end.join
end

p staggered_case('I Love Launch School!')
p staggered_case('ALL_CAPS', false)
p staggered_case('ignore 77 the 444 numbers')