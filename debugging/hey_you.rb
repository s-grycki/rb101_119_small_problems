# String#upcase! is a destructive method, so why does this code print HEY you 
# instead of HEY YOU? Modify the code so that it produces the expected output

# Original code
def shout_out_to(name)
  name.chars.each { |c| c.upcase! }

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'



def shout_out_to(name)
  name.upcase!

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'

# The name variable in the original code was reassigned to an array element,
# once that happened, it quit pointing to the same object as the originally
# passed string with no way to point it back. The solution is to just call
# upcase! on the string without reassigning it. That way, mutation will
# change the element pointed to by both the outside string instance and the
# method parameter serving as a local method variable
