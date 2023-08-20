# Our countdown to launch isn't behaving as expected. Why? 
# Change the code so that our program successfully 
# counts down from 10 to 1.

# Given code
def decrease(counter)
  counter -= 1
end

counter = 10

10.times do
  puts counter
  decrease(counter)
end

puts 'LAUNCH!'


# Corrected code
def decrease(counter)
  counter - 1
end

counter = 10

counter.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'



# The counter variable is passed to the decrease method where it is reassigned
# to a different value. Since methods have their own scope and integers are
# immutable, we have to get the return value from outside of the method. One
# way to do this is by reassigning the counter variable with the method call's
# return value. This works because blocks can access previously declared 
# variables and, therefore, reassign them

# FURTHER EXPLORATION: Can you change the code to specify 10 only once?
