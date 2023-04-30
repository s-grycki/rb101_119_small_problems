=begin
Problem: Take a first name, space, and a last name passed as a single string argument and
return a new string that contains last name, first name

-Input: String as a name
-Output: New string as last name, first name

-Rules:
- 

Examples:
swap_name('Joe Roberts') == 'Roberts, Joe'

Data Structures:


Algorithm:
array = string.split
array[1], array[0]

Code:
=end

# Alternate solution
def swap_name(string)
  array = string.split
  "#{array[1]}, #{array[0]}"
end

def swap_name(string)
  string.split.reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'