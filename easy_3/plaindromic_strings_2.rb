=begin
  PROBLEM: Return true if the passed string is a palindrome
  Input: String
  Output: Boolean true/false
  Rules:
    - Case and all non-alphanumeric characters should be ignored

  EXAMPLES:
  real_palindrome?('madam') == true
  real_palindrome?('Madam') == true           # (case does not matter)
  real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
  real_palindrome?('356653') == true
  real_palindrome?('356a653') == true
  real_palindrome?('123ab321') == false

  DATA STRUCTURES:

  ALGORITHM:
    - 
=end

def real_palindrome?(string)
  string = string.delete("^A-Z", "^a-z").downcase
  palindrome?(string)
end

def palindrome?(string)
  string.reverse == string
end


p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
