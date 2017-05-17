# In the far future, everyone spells their names backwards. Create a method called greet_backwards that greets people using their reversed names. For example:
#
# Calling puts greet_backwards('Amanda') should output:
#
# Hello, adnamA! Welcome home.
#
# Call that method for four different people: "Bob", "Shirly", "Sue", and "Andy".
#
# Notice how much extra code we would have needed if didn't make use of a method!
#
# Finally, modify your greet_backwards method to say the person's name twice. For our 'Amanda' example, you should get:
#
# Hello, adnamAadnamA! Welcome home.
#
# Notice that we would have had to modify four lines of code if we didn't have the greet_backwards method! This is just one reason methods are useful.


def greet_backwards(name)
  name.reverse!
  "Hello #{name}#{name}. Welcome home."
end

puts greet_backwards("bob")
puts greet_backwards("shirly")
puts greet_backwards("sue")
puts greet_backwards("andy")

# Create a method that converts Fahrenheit temperatures to Celsius in a file called exercise5.rb.
# Start with prompting the user for a temperature in Fahrenheit. Then call your method and pass in the user input as a parameter.
# Your method should:
# have one parameter: the temperature in Fahrenheit
# do the conversion with this formula: C = (F - 32) x 5/9
# ensure that the parameter you pass in is a number by converting it with to_i
# Output the result in a full sentence using string interpolation.
# Don't forget to commit your progress as you go along. Once you're done, commit one last time and push it to github.
# TIP: Don't start your variable names with capital letters, otherwise Ruby will think you want to make a constant instead of a variable. Making a constant is a way of giving a name to a value that won't ever be reassigned.

def conversion(f)
  (f - 32) * 5/9
end

puts "What is the temperature today?"
input = gets.chomp.to_i
puts conversion(input)
