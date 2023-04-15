=begin
Problem: Will the below method return the same object or a different object?

- Input: String
- Output: String reversed

Algorithm:
- The string argument 'hello world' is passed into method spin_me
- 'hello world' is passed into the method parameter str and acts as reference to value
- str is split into a new array seperated by the space
- each is called on each element in the array, which is a self-returning method
- Each string in the array is reversed with a destructive call
- The end keyword is called with join seperated by a space, which returns a single string

Code:
=end

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

str = "hello world"
p spin_me(str) # "olleh dlrow"
p str

# The answer is that a different object is returned. When .each is called on
# str.split, it's doing so on a new array that isn't accessing the original string