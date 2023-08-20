# We wrote a method for moving a given number of elements from one array to 
# another. We decide to test it on our todo list, but invoking move on line 11
# results in a SystemStackError. What does this error mean and why does it happen?

# Given code
def move(n, from_array, to_array)
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

#move(2, todo, done)

#p todo # should be: ['coffee with Tom']
#p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']


# Corrected code
def move(n, from_array, to_array)
  p from_array # Never impacted until recursive evalutation begins
  return if n == 0
  move(n - 1, from_array, to_array) # Moved to better demonstrate recursion
  to_array << from_array.shift
  p n # (1 -> 2)
  p from_array # Begins to get impacted
end

def move(n, from_array, to_array)
  p from_array # impacted during recursion
  return if n == 0
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
  p n # (1 -> 2)
  p from_array # No longer impacted
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)
#move(4, todo, done) # ["apply sunscreen", "go to the beach", "study", "walk the dog", "coffee with Tom", nil]

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']

# This problem requires both knowledge of the call stack and a basic
# understanding of how recursive calls calculate return values. In this case,
# the method was calling itself an infinite number of times and adding that
# call onto the call stack. It can't begin evaluating return values from the
# last call until it meets some base case. This is why there was a 
# "stack overflow." It was frowing infinately. The way to solve this is by
# adding an exit condition in the method that will be executed on the 
# appropriate recursive call. It will then begin returning values, starting
# from the last, until it gets back to the original call

# FURTHER EXPLORATION: What happens if n is larger than from_array?
# The shift method will start getting called on an empry array. This wil
# return nil and push it to the to_array for each additional iteration
