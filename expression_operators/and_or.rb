# AND &&
# By using the && (AND) operator, if the left hand operand was either nil or false the right hand expression
# was not evaluated.


# Example
# The print would not execute anymore since the x value is nil.
x="Hello World"
x && puts(x.to_s)

# y="Hello World"
# if x && y
#   puts "Goes here..."
# else
#   puts "Something went wrong!!!"
# end

y=nil
y || puts("Hello Pussy!")
puts (1..10).to_a