=begin
PROBLEM: (Start with inputs/outputs if confused. 
Read Problem -> See examples -> Ask questionss)
Take a string and return a hash that indicates what percentage of characters
are lowercase, uppercase, or neither
Input: String of characters
Output: Hash with percentage makeup
Explicit Rules: (Also clarifies edge cases and questions)
  - Assume string will always have at least one character

Implicit Rules:
  - All characters count
  - Hash values are floats


EXAMPLES:
letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }


DATA STRUCTURES: (Update co-currently with algorithm, if needed)
  - Hash (to store values)

<====== THOUGHT PAD ======>
Initialize hash with default 0 values
Populate the values with amounts first, then divide by size of string
<=========================>


Algorithm: (View as series of steps. Start high level on complex problems and
think about extracting to helper methods)
  - Initalize hash with key labels and default 0 values
  - Iterate over each character in string
    - If character doesn't include A-Za-z
      - :neither += 1
    - Else if string lowercase equals self
      - :lowercase += 1
    - Else
      - :uppercase += 1

  - Set str_size = string.size as float
  - Iterate over each value in hash
    - Reassign to value divided by str_size

  - Return hash

  FURTHER EXPLORATION: ROUND VALUES TO ONE DECIMAL

=end

def letter_percentages(str)
  count_hash = create_hash(str)
  populate_hash(str, count_hash)
  str_size = str.size.to_f
  count_hash.each { |key, val| count_hash[key] = (val / str_size) * 100 }
  count_hash
end

def create_hash(str)
  count_hash = { lowercase: 0, uppercase: 0, neither: 0 }
end

def populate_hash(str, count_hash)
  str.each_char do |char|
    if char.count('A-Za-z') == 0
      count_hash[:neither] += 1
    elsif char.downcase == char
      count_hash[:lowercase] += 1
    else
      count_hash[:uppercase] += 1
    end
  end
end


# Alternate solution w/ further exploration
def letter_percentages(str)
  count_hash = { lowercase: 0, uppercase: 0, neither: 0 }
  count_hash[:lowercase] = str.count('a-z')
  count_hash[:uppercase] = str.count('A-Z')
  count_hash[:neither] = str.count('^A-Za-z')

  str_size = str.size.to_f
  count_hash.each do |key, val| 
    count_hash[key] = ((val / str_size) * 100).round(1)
  end

  count_hash
end


p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages('abcdefGHI')
