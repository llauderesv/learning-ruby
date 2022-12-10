# Loops
# Ruby's simple looping statements: while, until and for. Ruby also includes the ability to define custom
# looping constructs known as iterators.

# while
# Ruby's basic looping statements are while and until. They execute chunk of code while a certain condition is true,
# or until the condition becomes true.

# Example:

x = 10
while x >= 0 do
  puts x 
  x = x - 1
end

# Count back up to 10 using an until loop
# until loop is the reverse. The condition is tested and the body is executed if the condition evaluates to false
# or nil. This means that the body is exeucted zero or more times while the condition is false or nil.
x = 0
until x > 10 do
  puts x 
  x = x + 1
end

# Note that any until loop can be converted to a while simply by negating the condition. 
# Most programmers are familiar with while loops, but many have not used until loops before. 
# For this reason, you may want to use while loops except when until truly improves the clarity of your code.

# The do keyword in a while or until loop is like the then keyword in an if statement: it may be omitted 
# altogether as long as a newline (or semicolon) appears between the loop condition and the loop body. *

# while and until As Modifers
# You can express loop in a single line as Modifers

x = 0
puts x = x + 1 while x < 10

# Contrast whis code with the more traditional while loop written on a single line:
x= 0
while x < 10 do puts x = x + 1 end

# until can be used as a modifier just as while can be: 
a = [1,2,3] # Initialize an array
puts a.pop until a.empty? # Pop elements from array until empty


# The for/in Loop
# The for loop, or for/in loop, iterates through the elements of an enumerable object 
# (such as an array). On each iteration, it assigns an element to a specified loop variable
# and then executes the body of the loop.

# for var in collection do
#   body
# end

# Example:

# Print thelements in an array
array = ["one", "two", "three", "four", "five"]
for element in array
  puts element
end

# Print the keys and values in a has
hash = {:a=>1, :b=>2, :c=>3}
for key,value in hash
  puts "#{key} => #{value}"
end

# Iterators and Enumerable Objects
# Although while, until, and for loops are core part of the Ruby language, it is probably more common
# to write loops using special methods known as iterators. Iterators are one of the most noteworthy features
# of Ruby, and examples such as the following are common in introductory Ruby tutorials:

# 3.times { puts "Thank you!" }
# data.each { |x| puts x }
# [1,2,3].map { |x| x*x }
# factortial=1
# 2.upto(n) { |x| factorial *= x }

# The times, each, map and upto methods are all iterators, and they iteract with the block of code that follows them.


# Numeric Iterators
# The core Ruby API provides a number of standard iterators. The Kernel method loop behaves like an infinite loop, running
# its associated block repeatedly until the block executes a return, break, or other statement that exist from the loop.

# The upto method invokes its associated block once for each integer between the integer on which it is 
# invoked and the integer which is passed as an argument. 

# For example:

4.upto(6) {|x| print x} #=> prints "456"

# When the Integer.times method is invoked on the integer n, it invokes its block n times, 
# passing values 0 through n-1 on successive iterations. 

# For example:
3.times { |x| print x } # => prints "012"


# Enumerable Objects
# Array, Hash, Range, and a number of other classes define an each iterator that passes each
# element of the collection to the associated block.

[1,2,3].each {|x| print x} # => prints "123"

# Some of the most commonly used Enumerable iterators are the rhyming methods collect, select, reject, and inject.

# The collect method (also known as map) executes its associated block for each element of the enumerable object,
# and collects the return value of blocks into an array:
squares = [1,2,3].collect {|x| x*x}
puts "The squares is #{squares.to_a}" 


# The select method invokes the associated block for each element in the enumerable object, and returns an array 
# of elements for which the block returns a value other than false or nil.

evens = (1..10).select {|x| x%2==0}
puts "Even number is #{evens.to_a}"

# The reject method is simply the opposite of select; it returns an array of elements for
# which the block returns nil or false. For example:
odds = (1..10).reject {|x| x%2==0}
puts "All numbers are odd #{odds.to_a}"

# The inject method is a little more complicated than the others. It invokes the associated block with two arguments.
# The first argument is an accumulated value of some sort from previous iterations.

# The inject method is just like the reduce function in JavaScript that accept a value of accumulator which is the return 
# value and the current value in the item
sum = (1...10).inject {|sum, x| sum + x }
puts "The sum of all numbers in array is #{sum}"

array = (1..10)
array.collect do |x|
  next 0 if x == nil
  next x, x*x
end


array.collect do |x| 
  if x == nil
    0 
  else
    [x, x*x] 
  end
end

# Blocks define a new variable scope: variables created within a block exist only within that block
# and are undefined outside of the block. 

total = 0
(1..10).each {|x| total += x}
puts "Total is #{total}"

# In this example you can create a local variable inside the block by defining a semicolon to it.
# like below in the x is the a block parameter and y is the a block-local variable.

# The point of declaring these block-local variables is to guarantee that 
# you will not inadvertently clobber the value of some existing variable.
x = y = 0                # local variables
1.upto(4) do |x;y|       # x and y are local to block
  y=x + 1                # x and y "shadow" the outer variables # Use y as a scratch variable
  puts y*y               # Prints 4, 9, 16, 25
end
puts [x,y]               # => [0,0]: block does not alter these
  
# Blocks can have more than one parameter and more than one local variable, of course. 
# Here is a block with two parameters and three local variables:

# hash.each {|key,value; i,j,k| ... }
  
  
  