# Variables
# There are 4 kinds of variables in Ruby.

# Variables begin with $ are global variables.
# which means that it was visible throughout to a Ruby program.

# Variables begin with @ and @@ are instnace variables and class variables,
# used in object-oriented programming.

# Variables always have simple, unqualified names. If a. or :: appears in an expression,
# then that expression is either a reference to a constant or a method invocation
# For example, Math::PI is reference to constant, and the expression item.price is an
# invocation of the method named priced on the value held by the variable item

# Defining a constant variable
CM_PER_INCH = 2.54
puts "CM per inch is #{CM_PER_INCH}"

# Method invocation

puts ("Hello World")