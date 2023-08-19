=begin
PROBLEM: (Start with inputs/outputs if confused. 
Read Problem -> See examples -> Ask questionss)
Take a string argument and return true if all parentheses are properly balanced
false otherwise
Input: String of characters with parenthesis
Output: Boolean true/false
Explicit Rules: (Also clarifies edge cases and questions)
  - Balanced pairs occur in same number '(' and ')'
  - Balanced pairs must start with '('

Implicit Rules:
  - No parentheses returns true


EXAMPLES:
balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false
balanced?('What ())(is() up') == false


DATA STRUCTURES: (Update co-currently with algorithm, if needed)
  - 

<====== THOUGHT PAD ======>

<=========================>


Algorithm: (View as series of steps. Start high level on complex problems and
think about extracting to helper methods)
  - Set left and right equal to 0
  - Iterate over each character in string
    - left += 1 if char == '('
    - right += 1 if char == ')'
    - Return false if right > left
  - If right == left return true
  - Else false

=end


def balanced?(string)
  left, right = [0, 0]
  string.each_char do |char|
    left += 1 if char == '('
    right += 1 if char == ')'
    return false if right > left
  end
  right == left ? true : false
end


p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('What ())(is() up') == false
