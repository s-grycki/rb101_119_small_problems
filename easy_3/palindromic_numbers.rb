=begin
  PROBLEM: Return true if the integer given is palindromic, false otherwise
  Input: Integer
  Output: Boolean true/false
  Rules:
    - 

  EXAMPLES:
  palindromic_number?(34543) == true
  palindromic_number?(123210) == false
  palindromic_number?(22) == true
  palindromic_number?(5) == true

  DATA STRUCTURES:
    - Array

  ALGORITHM:
    - Create a duplicate of integer
    - Put integer inside array collection
    - Reverse each integer
    - Iterate over each integer element with index
      - If reverse array element == array element
        - Continue
      - Else
        - Return false
    - Return true
=end

def palindromic_number?(int)
  int.digits.join.to_i == int
end

def palindromic_number?(int)
  reversed_array = int.digits
  array = reversed_array.reverse
  array.each_with_index do |int, idx|
    return false if int != reversed_array[idx]
  end
  true
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
