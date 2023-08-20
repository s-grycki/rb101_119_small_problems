# The valid_series? method checks whether a series of numbers is valid.
# For the purposes of this exercise, a valid series of numbers must contain
# exactly three odd numbers. Additionally, the numbers in the series must sum to 47.

# Unfortunately, our last test case is not returning the expected result. Why is that?

# Given code
def valid_series?(nums)
  return false if nums.sum != 47

  odd_count = nums.count { |n| n.odd? }
  odd_count = 3 ? true : false
end

# p valid_series?([5, 6, 2, 7, 3, 12, 4, 8])        # should return true
# p valid_series?([1, 12, 2, 5, 16, 6])             # should return false
# p valid_series?([28, 3, 4, 7, 9, 14])             # should return false
# p valid_series?([20, 6, 9, 4, 2, 1, 2, 3])        # should return true
# p valid_series?([10, 6, 19, 2, 6, 4])             # should return false


# Corrected code
def valid_series?(nums)
  return false if nums.sum != 47

  odd_count = nums.count { |n| n.odd? }
  odd_count == 3 #? true : false
end

p valid_series?([5, 6, 2, 7, 3, 12, 4, 8])        # should return true
p valid_series?([1, 12, 2, 5, 16, 6])             # should return false
p valid_series?([28, 3, 4, 7, 9, 14])             # should return false
p valid_series?([20, 6, 9, 4, 2, 1, 2, 3])        # should return true
p valid_series?([10, 6, 19, 2, 6, 4])             # should return false

# The final case failed because the last line in the method was reassigning
# odd_count to a new value that will always be truthy. If a case got past
# the guard clause, then it would have always returned true no matter how
# many odds there were. The solution is to check for equivalency instead

# FURTHER EXPLORATION: Is the final ternary operator necesarry?
# Since equality comparison will return a boolean (not just a truthy/falsy),
# no, it's not needed. The method would still work as intended even with just
# a correct truthy/falsy value, but in cases where we're relying on the
# truthiness of a return value, it's best practice to return a boolean
