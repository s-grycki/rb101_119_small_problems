=begin
Problem: Take a string, and return a hash with 3 entries: lowercase characters, uppercase
characters, and neither

-Input: String of characters
-Output: Hash with three key/values. Labels are keys and integers are values

-Rules:
- Count all characters
- Return 0 for all entries if an empty string is passed

Examples:
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

Data Structures:
String, Hash, Integer

Algorithm:
SET hash = new.Hash(0)
string.chars.each_with_object(hash)
  IF char is uppercase
    hash[:uppercase] += 1
  IF char is lowercase
    hash[:lowercase] += 1
  IF char is neither
    hash[:neither] += 1
  END IF
END LOOP

Code:
=end

# Alternate Solution
=begin
def letter_case_count(string)
  hash = { lowercase: 0, uppercase: 0, neither: 0 }
  string.chars.each_with_object(hash) do |char, hash|
    if !(('A'..'Z').to_a + ('a'..'z').to_a).include?(char)
      hash[:neither] += 1 
    elsif char.upcase == char
      hash[:uppercase] += 1
    else
      hash[:lowercase] += 1 
    end
  end
end
=end


def letter_case_count(string)
  hash = Hash.new
  hash[:lowercase] = string.count('a-z')
  hash[:uppercase] = string.count('A-Z')
  hash[:neither] = string.length - hash.values.sum
  hash
end

p letter_case_count('abCdef 123')
p letter_case_count('AbCd +Ef')
p letter_case_count('123')
p letter_case_count('')