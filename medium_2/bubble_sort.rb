=begin
PROBLEM: (Start with inputs/outputs if confused. 
Read Problem -> See examples -> Ask questionss)
Take an array and sort it using a bubble sort algorithm. Sort in place
Input: Array of sortable elements
Output: Same Array with elements sorted
Explicit Rules: (Also clarifies edge cases and questions)
  - Array has at least 2 elements
  - Mutate the argument
  - Sort is over after first pass with no change

Implicit Rules:
  - 


EXAMPLES:
array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)


DATA STRUCTURES: (Update co-currently with algorithm, if needed)
  - Array (initial data type)

<====== THOUGHT PAD ======>
Need to compare each element (<=>)
Need something to track if any change took place (toggle variable)
<=========================>


Algorithm: (View as series of steps. Start high level on complex problems and
think about extracting to helper methods)
  - Set iteration = array size - 1
  - Loop
    - Set change = false
    - Loop 1 to iteration number of times
      - If array[idx - 1] > array[idx]
        - array[idx - 1], array[idx] = array[idx], array[idx - 1]
        - Set change = true
      - If change == false
        - Return array
      - Else continue loop 

=end

def bubble_sort!(array)
  iteration = array.size - 1
  loop do
    change = false
    1.upto(iteration) do |idx|
      if array[idx - 1] > array[idx]
        array[idx - 1], array[idx] = array[idx], array[idx - 1]
        change = true
      end
    end
    return array if change == false
  end
end


array = [5, 3]
p bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
