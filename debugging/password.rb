# The following code prompts the user to set their own password if they
#  haven't done so already, and then prompts them to login with that 
# password. However, the program throws an error. What is the 
# problem and how can you fix it?

# Once you get the program to run without error, does it behave as expected?
# Verify that you are able to log in with your new password.

#Given code
password = nil

def set_password
  puts 'What would you like your password to be?'
  new_password = gets.chomp
  password = new_password
end

def verify_password
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

# if !password
#   set_password
# end
# 
# verify_password



# Corrected code
password = nil

def set_password
  puts 'What would you like your password to be?'
  gets.chomp
end

def verify_password(password)
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password # => !(nil) - true
  password = set_password
end

verify_password(password)


# The error complains of an undefined local variable. The developer seems to 
# be trying to access the password variables declared outside of the function
# scope. One way to fix this is to reassign password to the return value of
# set_password and pass this in as an argument to the verify_password method
