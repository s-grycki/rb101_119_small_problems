=begin
Problem: Write a method that searches all multipules of 3 OR 5
between 1 and some other number. It then computes the sum of
the multiples. Assume evey number passed in is greater than 1

-Input: Integer
-Output: Summed integer

-Rules:
-Multiples of 3 OR 5
-Inputs assumed greater than 1

Examples:
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

Data Structures:
Integer, Range, Array

Algorithm:
GET integer
SET range = (1..integer).to_a
SET sum_values = []
FOR each integer IN range
  IF integer % 3 == 0 OR integer % 5 == 0
    sum_values.push(integer)
  END IF
END FOR LOOP
sum_values.inject(:+)

Code:
=end

def multisum(integer)
  values = (1..integer).to_a
  values.select! { |int| int % 3 == 0 || int % 5 == 0 }
  values.inject(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168