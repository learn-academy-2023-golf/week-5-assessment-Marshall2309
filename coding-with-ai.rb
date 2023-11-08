# ASSESSMENT 5: Coding Critique with AI

# Use AI to learn about the following code.

# Based on your learning, reverse engineer a prompt that this code would satisfy.

# Write a Ruby program that takes a list of votes for different types of tacos and returns a hash containing the total counts for each type of taco. Make sure that the program is case-insensitive, meaning that 'Fish Taco', 'fish taco', and 'FISH TACO' should all be considered as the same vote.

# Add comments to each line to explain the code.

taco_votes = ['fish taco', 'california burrito', 'Tacos Al Pastor', 'Carnitas tacos', 'California burrito', 'Fish taco', 'California Burrito', 'Fish Taco', 'Tacos de Barbacoa', 'tacos Al Pastor', 'fish taco', 'California burrito', 'fish taco', 'tacos al pastor', 'Carnitas tacos', 'Fish taco', 'tacos de barbacoa', 'fish taco', 'Carnitas Tacos', 'carnitas tacos', 'Fish Taco', 'fish taco']

# taco_votes is a list of votes for tacos placed into an array. 

totals = taco_votes.reduce(Hash.new(0)) do |result, vote|
# totals is the variable that stores the final count votes. reduce is a method used to take all the elements in the taco_votes array and count them, and the hash is placed inside the reduce block. 
# Inside the reduce block, result represents the current state of the totals hash, and vote represents the current vote being processed. 
  result[vote.downcase] += 1
# This is the main operation. vote.downcase converts the current vote to lowercase. This ensures that "Fish taco", "fish taco", and "FISH TACO" are treated as the same vote.
# result[vote.downcase] accesses the current count for the specific type of taco. If it's the first time this type of taco is encountered, it will be initialized to 0. 
# += 1 increments the count by 1.
  result
#  The result is returned at the end of each iteration, so it can be used in the next iteration with the updated count.
end

p totals
# p totals prints out the final result, which is a hash containing the counts for each type of taco.