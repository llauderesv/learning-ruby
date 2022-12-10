# Method
# Method vs Function
# A Method is inside in a class that can be invocable while the function doesn't 
# live in the class.

# Defining methods
# Methods are defined with the def keyword. This is followed by the method name and
# an optional list of parameter names in parenthesis. 

# Here's an example of a method:
def factorial(n)
  if n < 1
    raise "argument must be > 0"
  elsif n == 1
    1
  else
    n * factorial(n - 1)
  end
end

# This code defines a method named factorial. The method has a single parameter
# names n. The identifier is used as a variable within the body of the method. This is 
# a recursive method.

# In common practice return is omitted where it is not required.

# Methods and exception Handling
# A def statement that defines a method may include exception-handling code in the form of rescue,
# else, and ensures clauses, just as begin statement can. 

# Defining Singleton Methods

# The methods we've defined so far are all global methods. If we placed a def statement like the ones
# shown earlier inside a class statement, then the methods that are defined are instance methods of the class;
# these methods are defined on all objects that are instances of the class

# It is alsi possiblem however, to use the def statement to define method a single specified object.
# Simple follow the def keyword with an expression that evaluates to an object. Simply follow the def keyword
# with an expression that evaluates to an object. 

# The resulting method is known as a singleton method because it is available only on a single object:
o = "message"
def o.printme
  puts self
end

o.printme

# Class methods such as Math.sin and File.delete are actually singln methods. Math is a constant that refers to a Module 
# object, and File is a constant that refers to a Class object.


# Method Names
# By convention, method names begin with a lowercase letter. When a method name is longer than one word, the usual 
# convention is to separate the words with underscores like_this rather than using mixed case likeThis

# Method ends with question mark (?) means that method will return a Boolean value, it's either true or false
# However
# Method ends with exclamation mark (!) means that method is used method caution because that method is a mutators
# Which alter the internal state of an object, But this is not always the case; there are many mutators that 
# do not end with exclamation mark, and a number of nonmutatos that do. Mutating methods (such as Array.fill)

# Methods and Parenthesis
# Ruby allows parentheses to be omitted from most method invocations. In simple cases, this results in clean-looking code.

# Optional Parenthesis
# Parenthesis are omitted from method invocations in many common Ruby idioms. The following two lines of code are equivalent:
puts "Hello World"
puts("Hello World")

# Parameter defaults are evaluated when a method is invoked rather than when it is parsed. In the following method,
# the default value [] produces a new empty array on each invocation, rather than using a

# Append the value x to the array a, return a
# If no array is specified, start with an empty one.
def append(x, a=[])
  a << x
end

numbers=[1,2,3]
append(4, numbers)
puts numbers

# Variable-Length Argument Lists and Arrays

# Sometimes we want to write methods that can accept an arbitrary number of arguments. To do this, we put an *
# before one the methods parameters. 

# For example
def max(first, *rest)
  max = first
  rest.each {|x| max = x if x > max}
  max
end
puts max 1,2,3,4

# Asterisk can also be scatter, expand, or explore the elements of an array (or range or enumerator) so that
# each element becomes a separate method argument. The * is sometimes called the splat operator
puts *numbers

# Hashes for Named Arguments

# When a method requires more than two or three arguments, it can be difficult for the programmer invoking the method
# to remember the proper order for those arguments. 
# Some langeages allow you to write invocations that explicitly specify a parameter name for each argument that is
# passed.

def sequence(args)
  n = args[:n] || 0
  m = args[:m] || 1
  c = args[:c] || 0
  a = []
  n.times { |i| a << m*i+c }
  a
end

puts sequence({:n=>5, :m=>3})
# In order to better support this style of programming, Ruby allows you to omit the curly braces 
# around the hash literal if it is the last argument to the method

# A hash without braces is sometimes called a bare has, and when we use one it looks like we are passing
# separate named arguments, which we can reorder 
puts sequence(:m=>3, :n=>5)


# Using & in method invocation (just like you can pass a function as arugment to a method)

# Consider the following code which sums the contents of two arrays:
# a, b = [1,2,3], [4,5]
# sum = a.inject(o) {|total, x| total + x}
# sum = b.inject(sum) {|total, x| total + x}

# Rather than the Ruby interpreter parse the same block twice, we can create a Proc to represent the block, 
# and use the single Proc object twice:

# a, b = [1,2,3], [4,5]
# summation = Proc.new {|total,x| total + x}
# sum = a.inject(o, &summation)
# sum = b.inject(sum, &summation)

# Lambda Literals
# Ruby 1.9 supports an entirely new syntax for defining lambdas as literals. We’ll begin with a Ruby 1.8 lambda, created with the lambda method:

# In Ruby 1.9, we can convert this to a literal as follows:
# • Replace the method name lambda with the punctuation ->.
# • Move the list of arguments outside of and just before the curly braces.
# • Change the argument list delimiters from || to ().
succ = ->(x){x+1}

puts succ.call(2)


# Invoking Procs and Lambdas

# Procs and lambdas are objects, not methods, and they canno be invoked in the same way that methods are. If p
# refers to a Prod object, you cannot invoke p as a method. But because p is an object, you can invoke a method of p.

# Example invoking Proc and Lambdas 
# p.call(x, y)

# Ruby 1.9 offers an additional way to invoke a Proc object; as an alternative to square
# brackets, you can use parentheses prefixed with a period:
# z = f.(x,y)
# .() looks like a method invocation missing the method name. This is not an operator that can be defined, 
# but rather is syntactic-sugar that invokes the call method. It can be used with any object that defines a 
# call method and is not limited to Proc objects.