=begin
PROBLEM: (Start with inputs/outputs if confused. 
Read Problem -> See examples -> Ask questionss)
Write a recursive Fibonacci method that that computes the nth Fibonacci
number as an argument
Input: Integer as Fibonacci number
Output: Fibonacci number at nth place
Explicit Rules: (Also clarifies edge cases and questions)
  - Recursive methods call themselves at least once
  - Recursive methods have a condition to halt recursion
  - Recursive methods use the self returned result

Implicit Rules:
  - An input of 1 or 2 should return 1


EXAMPLES:
fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765


DATA STRUCTURES: (Update co-currently with algorithm, if needed)
  - 

<====== THOUGHT PAD ======>
The program should halt if n is less than 2
Every call should return 1 or 0
<=========================>


Algorithm: (View as series of steps. Start high level on complex problems and
think about extracting to helper methods)
  - Return n if n is less than 2
  - Call fibonacci(n-1) + fibonacci(n-2)
=end

def fibonacci(n)
  return n if n < 2
  fibonacci(n - 1) + fibonacci(n - 2)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765




# Explaining Recursion
def sum(n)
  return 1 if n == 1
  n + sum(n - 1)
end

p sum(5)

# Call sum(5)
#   5 + sum(4)
#   Call sum(4)
#     4 + sum(3)
#     Call sum(3)
#       3 + sum(2)
#       Call sum(2)
#         2 + sum(1)
#         Call sum(1)
#           sum(1) returns 1 (top of the stack)
#         Return to 1 + sum(2)
#         Returns 3
#       Return to 3 + sum(3)
#       Returns 6
#     Return 6 + sum(4)
#     Returns 10
#   Return to 10 + sum(5)
#   Returns 15
# sum(5) returns 15



# With fibonacci(6)
# 1. fibonacci method is called with argument of 6
# 2. else condition is executed
# 3. fibonacci is called with arguments 5 and 4 # 2 calls
# 4. fibonacci is called with arguments (4 and 3) and arguments (3 and 2) # 4 calls
# 5. fibonacci is called with arguments ((3 and 2) and (2 and 1)) and ((2 and 1) and (1 and 0)) # 8 calls
# 6. fibonacci returns 1 and 0 values to original call # 1, 1, 1, 0
# 7. fibonacci is called with arguments (2 and 1) and (1 and 0) and (1 and 0) and (1 and 0) # 8 calls 
# 8. fibonacci returns 1 and 0 values to original call # 1, 1, 0, 1, 0, 1, 0
# 9. fibonacci is called with arguments (1 and 0) # 2 calls
# 10. fibonacci returns 1 and 0 values to original call # 1, 0
# 11. the call to fibonacci(4) evaluates to 8
