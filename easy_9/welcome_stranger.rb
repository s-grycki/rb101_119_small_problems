=begin
Problem: Take two arguments: an array and a hash. The array contains 2 or more string elements
that produce a persons name. The hash contains the keys: :title and :occupation with appropriate
values. Return a greeting using the full name while mentioning the title and occupation

-Input: Array with a name and a hash with title and occupation
-Output: String message containing input values

-Rules:
- Name elements should be seperated by space 

Examples:
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> "Hello, John Q Doe! Nice to have a Master Plumber around."

Data Structures:
Array, Hash, Strings

Algorithm:
new_string = ''
FOR each string IN array
  push string onto new_string seperated by spaces
use string interpolation to add key/value pairs into string


Code:
=end

def greetings(array, hash)
  new_string = "Hello, #{array.join(' ')}! "
  new_string + "Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })