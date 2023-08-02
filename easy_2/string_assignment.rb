
# Take a look at the following code:

name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

# What does this code print out? Think about it for a moment before continuing.

# If you said that code printed

# Alice
# Bob

# you are 100% correct, and the answer should come as no surprise.
# Now, let's look at something a bit different:


name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# What does this print out? Can you explain these results?

# This will print out the name BOB uppercased twice. On the first line, name
# is initialized to 'bob', an object created in memory. On line 2, save_name
# is initialized to the same object in memory that variable name points to.
# At this point, we have two variables pointing to the same object. Then the
# destructive method .upcase! is called on name. This will impact both variables
# because it's modifying the value that exists in memory
