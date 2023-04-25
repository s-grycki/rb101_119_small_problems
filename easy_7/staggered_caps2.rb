=begin
Problem: Take a string of words and return a new string of the original input, but with
every other letter alternating case - starting with capitalized. Do not count non-alphabetic
characters as determining toggle case by default, but allow for an optional second argument
which toggles if non-alphabeticals should be included

-Input: String of words
-Output: String of input but with alternating case

-Rules:
- Start with capitalization
- Only alphabetic characters count for toggling unless specified otherwise
- Non alphabetics should not be changed in any way

Examples:
staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

Data Structures:
String, Array

Algorithm:
string.chars.map.with_index do |char, idx|
  char = char.upcase if idx.even?
  char = char.downcase if idx.odd?
RETURN string.chars.map.join

Code:
=end

def staggered_case(string, only_alphabetical = true )
  only_alphabetical ? only_alphabeticals(string) : non_alphabeticals(string)
end

def only_alphabeticals(string)
  i = -1
  string.chars.map do |char|
    if char =~ /[A-Z]/ || char =~ /[a-z]/
      i += 1
      i.even? ? char.upcase : char.downcase
    else
      char
    end
  end.join
end

def non_alphabeticals(string)
  string.chars.map.with_index do |char, idx|
    idx.even? ? char.upcase : char.downcase
  end.join
end

p staggered_case('I Love Launch School!')
p staggered_case('ALL CAPS', false)
p staggered_case('ignore 77 the 444 numbers')