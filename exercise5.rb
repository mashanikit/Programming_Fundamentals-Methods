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

# Let's create a method wrap_text that wraps text in symbols of our choice. For example:
# wrap_text 'hello', '==='
# should return:
# ===hello===

# Now that this method works, see if you can use it to generate the string:
#
# ---===###new message###===---
#
# Hint: you'll have to call the same method multiple times.

def wrap_text(text, symbol)
  return symbol + text + symbol.reverse!
end

puts wrap_text("hello", "---===###")

# You want to add up your expenses for the year. Create an array of numbers (integers or floats) that represents your expenses, eg:
#
# [250, 7.95, 30.95, 16.50]
#
# Add up the numbers and output the result.
#
# Tip: you may need a variable to keep track of the sum total. What value should it start at?
#
# Put this code into a method. The method should take an array as an argument and return the sum of the expenses in the array. Call the method twice with different arrays.

expenses = [250, 7.95, 30.95, 16.50]
other_expenses = [300, 200, 100]

# puts expenses.sum

def sum(array)
  array.sum
end
puts sum(expenses)
puts sum(other_expenses)

#each loop or reduce



  # We're going to make a shopping list by storing a few items in an array. Feel free to start with whatever items you like:
  #
  # grocery_list = ["carrots", "toilet paper", "apples", "salmon"]
  # After each step, run your program to ensure it works before you move onto the next one. It's a good idea to commit often, too.
  #
  # Your next step should present your grocery list with an item on each line, with an asterisk (*) in front of it so that it appears like this:



# You realize you've forgotten some rice, so add it to your list and output it again. Given that you've already output your list twice, it might be good to consider writing a method to do this. Putting frequently used chunks of code in a method lets you reuse them throughout your program without having to type them out over and over.
# You lost count of how many things you need to pick up. Better output the total number of items on your list.
# Check to see if your list includes "bananas". If it doesn't, output "You need to pick up bananas". Otherwise, output "You don't need to pick up bananas today".
# Display the second item in the list. (Don't forget that arrays indices start at zero!)
# It turns out that everything in this grocery store you're visiting is stored alphabetically, so to better plan out what you need to buy you should sort your grocery list and output it with asterisks again.
# After looking everywhere, you can't find the salmon. Delete it from your list and redisplay the list one last time.
# After you're done, be sure you have everything committed and pushed to your github repo.
def print_list(groceries)
  symbol = "*"
  groceries.each do |item|
    puts "#{symbol} #{item}"
  end
end

def addtolist(groceries, new_item)
  groceries << new_item
end

groceries = ["salmon", "avocado", "spinach", "peppers"]

print_list(groceries)
puts ""

addtolist(groceries,"rice")

print_list(groceries)

puts groceries.length

if groceries.include?("bananas")
    puts "You don't need to pick up bananas today"
  elsif
    puts "You need to pick up bananas today"
end

puts groceries[1]

puts groceries.sort!
puts ""

# def alphabetize(groceries)
#   groceries.sort!
# end

print_list(groceries.sort!)
puts ""


groceries.delete("salmon")
print_list(groceries)

# def newlist(groceries)
#   groceries.map do |item|
#     "#{symbol} #{item}"
# end
