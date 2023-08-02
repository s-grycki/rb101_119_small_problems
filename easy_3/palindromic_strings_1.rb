=begin
  PROBLEM: Return true if the passed string is a palindrome
  Input: String
  Output: Boolean true/false
  Rules:
    - Case, punctuation, and spaces all matter

  EXAMPLES:
  palindrome?('madam') == true
  palindrome?('Madam') == false          # (case matters)
  palindrome?("madam i'm adam") == false # (all characters matter)
  palindrome?('356653') == true

  DATA STRUCTURES:

  ALGORITHM:
    - 
=end

# def palindrome_string?(string)
#   string.reverse == string
# end

# def palindrome_array?(array)
#   array = array.join(' ')
#   array.reverse == array
# end  

def palindrome?(input)
  return true if input.reverse == input
  
  false
end


def palindrome?(input)
  input = Array(input).join(' ')
  input.reverse == input
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
p palindrome?([356653]) == true

# Extra. Handling strings and arrays with 2nd method
p palindrome?(["madam", "i'm" ,"adam"]) == false # This is a single array item. Strings have characters
p palindrome?(['356653']) == true
