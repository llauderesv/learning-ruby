# Hashes
# A hash is a data structure that maintains a set of objects known as keys, and associates a value with 
# each key. Hashes are also known as maps because they map key to values.

# Creating Hashes in Ruby
numbers = Hash.new
numbers["one"] = 1
numbers["two"] = 2
numbers["three"] = 3


sum = numbers["one"] + numbers["two"] # Display values of 3


# Hash Literals
# A hash literal is written as a comma-separated list of key/value pairs, enclosed within curly braces.
# Keys and Values are separated with a two-character "arrow": =>

# The Hash object can created the following syntax.
numbers = { "one" => 1, "two" => 2, "three" => 3 }

puts numbers["one"]