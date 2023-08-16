=begin
PROBLEM: (Start with inputs/outputs if confused. 
Read Problem -> See examples -> Ask questionss)
Take an argument representing the number of switches and return an array
representing which lights are on after n repetitions. Toggle all to on from
off on first pass, then toggle divisble by 2, then divisble by 3, and so on
until there have been n repetitions
Input: Number of lights, which also represents repetitions
Output: Array of which lights are on
Rules: (Also clarifies edge cases and questions)
  - Toggle from their real-time state


EXAMPLES:
Example with n = 5 lights:

    round 1: every light is turned on
    round 2: lights 2 and 4 are now off; 1, 3, 5 are on
    round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
    round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
    round 5: lights 2, 3, and 5 are now off; 1 and 4 are on



DATA STRUCTURES: (Update co-currently with algorithm, if needed)
  - Arrays, Hash

<====== THOUGHT PAD ======>
There's sub-data that should be grouped together logically (hash)
<=========================>


Algorithm: (View as series of steps. Start high level on complex problems and
think about extracting to helper methods)
  CREATE A NEW HASH
    - Set light_status to hash with keys 1..n as integers
    - Set light status off to default value for all numbers
    - Return new hash

  CHANGE HASH VALUES
  - Iterate 1 upto n number of times with counter
    - Iterate over each key/value pair in light_status
      - if int % n == 0
        - Set light_status[int] to 'on' if off or 'off' if on

  - Return keys which have a value of on

=end



def new_hash(lights)
  light_status = Hash.new('off')
  1.upto(lights) { |int| light_status[int] = light_status.default }
  light_status
end

def switch_hash_values!(light_status, counter)
  light_status.each do |int, status|
    if int % counter == 0
      light_status[int] = light_status[int] == 'off' ? 'on' : 'off'
    end
  end
end

def on_lights(light_status)
  light_status.select { |_,status| status == 'on' }.keys
end

def switch_lights(lights)
  light_status = new_hash(lights)
  1.upto(lights) do |counter|
    switch_hash_values!(light_status, counter)
  end
  on_lights(light_status)
end

p switch_lights(1000)
