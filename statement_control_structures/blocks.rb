# Blocks
# The use of blocks is fundamental to the use of iterators. In the previous section, we
# focused on iterators as a kind of looping construct. You can, however,place a block
# after any method invocation; if the method is not an iterator and never invokes block with yield.

# Print the numbers 1 to 10
1.upto(10) {|x| puts x}     # Invocation and block on one line with braces
1.upto(10) do |x|           # Block delimited with do/end
  puts x
end

# One common convention is to use curly braces when a block fits on a single line, 
# and to use do and end when the block extends over multiple lines.