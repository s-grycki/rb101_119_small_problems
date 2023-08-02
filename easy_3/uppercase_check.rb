=begin
  PROBLEM: Return true if all alphanumberics in string are uppercase, false otherwise
  Input: String
  Output: Boolean true/false
  Rules:
    - Ignore alphanumerics

  EXAMPLES:
  uppercase?('t') == false
  uppercase?('T') == true
  uppercase?('Four Score') == false
  uppercase?('FOUR SCORE') == true
  uppercase?('4SCORE!') == true
  uppercase?('') == true

  DATA STRUCTURES:
 

  ALGORITHM:

=end

def uppercase?(string)
  string.upcase == string
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
