# Exceptions and Exception Handling 

# An exception is an  object that represents some kind of exceptional condition, it indicates 
# that something has gone wrong. This could be a programming error --- attemting to divide by zero
# attempting to invoke a method on an object that does not define the method, 
# or passing an invalid argument to a method

def divid_by_zero
  52 / 0
rescue ZeroDivisionError
  puts "Error Attempting the divide by zero"
end

divid_by_zero


# The following code defines a simple method raises an exception if invoked with parameter whose
# value is invalid

# This method invokes raise with a string arugment. These are some equivalent ways to raise the same exception

# raise RuntimeError, "bad argument" if n < 1
# raise RuntimeError.new("bad argument") if n < 1
# raise RuntimeError.exception("bad argument") if n < 1

def factorial(n)
  raise TypeError, "Integer argument expected" if not n.is_a? Integer
  raise ArgumentError, "Expected Argument >= 1. Got #{n}'" if n < 1
  return 1 if n == 1
  n * factorial(n - 1)
end

# ArgumentError is probably more appropriate than RuntimeError
# raise ArgumentError, "Expected Argument >= 1. Got #{n}'" if n < 1


# Note this factorial method checks whether its arugment is in the correct range, but it does not check whether
# it is of right type. We might add more careful error checking by adding the following as the first line of 
# the method.

puts factorial 5

# Handling exceptions with rescue

# raise TypeError, "Integer argument expected" if not n.is_a? Integer

# raise is a Kernel method. A rescue clause, by contrast, is a fundamental part of the Ruby Language. rescue is not 
# a statement in its own right, but rather a clause that can be attached to other Ruby statements.

# Ruby statements. Most commonly, a rescue clause is attached to a begin statement. 

# begin
    # Any number of Ruby statements go here.
     # Usually, they are executed without exceptions and 
     # exucution continues after the end statement.
# rescue
    # This is the rescue clause; exception-handling code goes here.
    # If an exception is raised by the code above, or propagates up
    # from one of the moethods called above, then execution jumps here.
# end

# Naming the exception object
# You could get the value of the exception in rescue by using the `rescue => ex`

begin                                  # Handle exceptions in this block
  x = factorial(1)                    # Note illegal argument
rescue => ex                           # Store exception in variable ex
  puts "#{ex.class}: #{ex.message}"    # Handle exception by printing message
end                                    # End the begin/rescue block
  

# Handling exceptions by type
# Here's how you would write rescue clause that would handle any kind of exception:
# rescue ArgumentError, TypeError => error
   
begin
  x = factorial(1)
rescue ArgumentError => ex
  puts "Try again with a value >= 1"
rescue TypeError => ex
  puts "Try again with an integer"
end

# Propagation of exceptions
# When an exception is raised, control is immediately transferred outward and upward until a suitable rescue
# clause is found to handle the exception. When the raise method executes, the Ruby interpreter looks to see 
# whether the containing block has a rescue clause associated with it.

# retry in rescue clause
# When the retry statement is used within a rescue clause, it returns block of code to which rescue is attached.
# When exception is caused by a transient failure, such as an overloaded server, it might make sense to handle 
# the exception by simply trying again. Many other exceptions, however, reflect programming errors (TypeErrors,
# ZeroDivisionError) or non transient failures (EOFError or NoMemoryError). retry is not a suitable hanlding 
# technique for these exceptions.

# Here is a simple example that uses retry in an attempt to wait for network failure to be resolved.


# require 'open-uri'

# tries = 0
# begin
#   tries += 1
#   open('https://google.com')
# rescue OpenURI::HTTPError => ex
#   puts ex.message
#   if tries < 4
#     sleep(2**tries)
#     retry
#   end
# end


# The ensure clause
# A begin statement may have one final clause. The optional ensure clause, if it appears, must come after all rescue
#   and else clauses. It maybe also be used by itself without any rescue or else clause.

# The ensure clause, ensures that the block of code within begin statement was exeucted


def test
  begin return 1 ensure return 2 end
end

puts test