# ASSESSMENT 5: Ruby Coding Practical Questions
# MINASWAN

# -------------------1) Create a method that takes in a hash and returns one array with all the hash values at their own index and in alphabetical order. No nested arrays. Use the test variable provided.
# HINT: Google 'ruby get rid of nested arrays'

def sorted_values(hash)
    values = hash.values.flatten
    sorted_values = values.sort
    return sorted_values
  end
  

us_states = { 
    northwest: ['Washington', 'Oregon', 'Idaho'], 
    southwest: ['California', 'Arizona', 'Nevada'], 
    notheast: ['Maine', 'New Hampshire', 'Rhode Island'] 
}

sorted_values_array = sorted_values(us_states)
puts sorted_values_array

# Expected output: ['Arizona', 'California', 'Idaho', 'Maine', 'Nevada', 'New Hampshire', 'Oregon', 'Rhode Island', 'Washington'] 

# Pseudo code: 
# First I extracted all the values from the hash into a new array called sorted_values. 
# Then I used the flatten method to get the values into one array and get them to print alphabetically.
# In the return, I callled for the sorted_values.
# I then called the sorted_values array and the us_states together (can't remember the terminology) to create sorted_values_array.
# I then printed out the array.





# --------------------2a) Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a bike_info method that returns a sentence with all the data from the bike object.

class Bike
    attr_accessor :model, :wheels, :current_speed

    def initialize(model)
        @model = model
        @wheels = 2
        @current_speed = 0
    end

    def bike_info
        "The #{@model} bike has #{@wheels} wheels and is currently traveling at #{@current_speed} mph."
    end
end

bike1 = Bike.new("Mountain Bike")
puts bike1.bike_info

# Expected output example: 'The Trek bike has 2 wheels and is going 0 mph.

# Pseudo code:
# I created a class called Bike and initialized with a model, wheels, and current_speed per the instructions.
# The attr_accessor was added to create getter and setter methods for the attributes.
# the first def was used to initialize the model and the second def was used to create a method for the bike info. 
# The model and wheels instance variables were interpolated under bike_info, to spit out a new sentence in a string.
# bike1 line creates a new instance of the Bike class with the model name "Mountain Bike" and assigns it to the variable bike1.
# puts bike1.bike_info: This line calls the bike_info method on the bike1 object and prints the returned string to the console.



# -------------------2b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed by a given amount. The brake method should decrease the speed by a given amount. The bike cannot go negative speeds.

class Bike
    attr_accessor :model, :wheels, :current_speed

    def initialize(model)
        @model = model
        @wheels = 2
        @current_speed = 0
    end

    def bike_info
        "The #{@model} bike has #{@wheels} wheels and is currently traveling at #{@current_speed} mph."
    end

    def pedal_faster(speed)
        @current_speed = @current_speed + speed
    end

    def brake(speed)
        if @current_speed > 0 
            @current_speed = @current_speed - speed
            if @current_speed <= 0
                @current_speed = 0
            end
            @current_speed
        end
    end

end

bike1 = Bike.new("Mountain Bike")
puts bike1.bike_info
puts bike1.pedal_faster 10
puts bike1.pedal_faster 18
puts bike1.brake 5
puts bike1.brake 25

# Expected output example: my_bike.pedal_faster(10) => 10
# Expected output example: my_bike.pedal_faster(18) => 28
# Expected output example: my_bike.brake(5) => 23
# Expected output example: my_bike.brake(25) => 0

# Pseudo code:
# For this, I just added the pedal_faster method and the brake method with some tricky math to add the funtionality.
# 