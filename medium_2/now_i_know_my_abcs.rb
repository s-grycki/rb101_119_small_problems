=begin
PROBLEM: (Start with inputs/outputs if confused. 
Read Problem -> See examples -> Ask questionss)
There are 13 blocks with 2 uppercase letters (for the 26 letters), and this
limits spell-able words to those which do not use both letters from any block.
Return true if passed word can be spelled, false otherwise
Input: word string
Output: Boolean based on if word can be spelled
Explicit Rules: (Also clarifies edge cases and questions)
  - 

Implicit Rules:
  - Case-insensitive checks


EXAMPLES:
B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true


DATA STRUCTURES: (Update co-currently with algorithm, if needed)
  - Hash (to group letter pairs), Array(to hold letter pairs as elements)

<====== THOUGHT PAD ======>
If characters are deleted as they're read, then no hash value should be empty
if true
<=========================>


Algorithm: (View as series of steps. Start high level on complex problems and
think about extracting to helper methods)
  - Set pairs to hash with correct pairs in an array
  - Iterate over each character in word
    - If character is in hash values
      - delete this value
    - Return false if any value is empty
    - True otherwise

=end

def block_word?(word)
  pairs_hash = create_pairs_hash
  word.upcase.chars.each do |char|
    pairs_hash.each do |key, value|
      index = pairs_hash[key].delete(char) if value.include?(char)
      return false if pairs_hash.any? { |_,arr| arr.empty? }
    end
  end
  true
end 
  
def create_pairs_hash
  pairs = (('A'..'M').to_a).zip(('N'..'Z').to_a)
  (0..12).zip(pairs).to_h
end

# Alternate solution
BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(word)
  BLOCKS.all? do |group|
    word.upcase.count(group) < 2
  end
end


p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
