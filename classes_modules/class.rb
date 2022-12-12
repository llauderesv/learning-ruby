# A class defines a set of methods that an object responds to. 
# Classes may extend or subclass other classes, and inherit or override the 
# methods of their superclass. Classes can also include—or inherit methods from—modules.

# In constrast to the strict encapsulation of object state, Ruby's classes are very open. Any Ruby
# program can add methods to existing classes, and it is even possible to add "single methods" to
# individual objects.

# Creating a Class
# Classes are created in Ruby with the class keyword:
class Point
end

# Like most Ruby constructs, a class definition is delimited with an end. In addition to defining a new class, 
# the class keyword creates a new constant to refer to the class. 
# The class name and the constant name are the same, so all class names must begin with a capital letter.

# Intantiating a Point
# Even though we haven't put anything in our Point class yet, we can still instatiate it:
p = Point.new

# Initializing a Point
# When we create a new Point objects, we want to initialize them with two numbers that represent their X and Y coordinates.
# In many object-oriented languages, this is done with a "constructor". In Ruby, it is done with a initialize method:
class Point
  @x = 0
  @y = 0

  def initialize(x,y)
    @x, @y = x, y
  end
end

# Defining a to_s Method
# Just about any class you define should have a to_s instance method to return a string representation of the object.
# This ability invaluab.le when debugging. Here's how we might do this for Point:

class Point
  def initialize(x,y)
    @x, @y = x, y
  end

  def to_s
    "(#@x, #@y)"
  end
end

# With this new method defined, we can create points and print them out:
p = Point.new(1,2)
puts p

# Accessors and Atributes
# If we want users of the Point class to be able to use the X and Y coordinates of a point, 
# we’ve got to provide accessor methods that return the value of the variables:

class Point
  def initialize(x,y)
    @x, @y = x, y
  end

  def x
    @x
  end

  def y
    @y
  end
end

# With these methods defined, we can write code like this:
p = Point.new(1,2)
q = Point.new(p.x*2, p.y*3)

# Using Setters inside a Class
# If you wanted to invoke the or update the method within the class you can use the method self

class MutablePoint
  def initialize(x,y); @x, @y = x, y; end

  def x; @x; end # The getter method for @x
  def y; @y; end # The getter nethod for @y

  def x=(value) # The setter method for @x
    @x = value
  end

  def y=(value) # The setter method for @y
    @y = value
  end
end

mutable_point = MutablePoint.new(1,1)
puts "Before the value of x is: #{mutable_point.x}"
mutable_point.x = 2
puts "After the value of x is: #{mutable_point.x}"

# You could define a mutable Point class, we could write: 
class Point
  attr_accessor :x, :y # Define accessor methods for our instance variables
end

class Point
  attr_reader :x, :y # Define reader methods for our instance variables
end

class NewPoint
  attr_accessor :x, :y
  def initialize(x,y)
    @x, @y = x, y
  end
end

new_point = NewPoint.new(1,2);
new_point.x = 3
puts "The value of x & y is: #{new_point.x} & #{new_point.y}"

# Defining Operator

# We’d like the + operator to perform vector addition of two Point objects, 
# the * operator to multiply a Point by a scalar, and the unary – operator to do the equivalent of 
# multiplying by –1. Method-based operators such as + are simply methods with punctuation for names.

class AnotherPoint
  attr_reader :x, :y
  def initialize(x,y)
    @x, @y = x, y
  end

  def +(other)
    raise TypeError, "Point argument expected" unless other.is_a? AnotherPoint
    Point.new(@x + other.x, @y + other.y)
  end

  def -@
    Point.new(-@x, -@y)
  end

  def *(scalar)
    Point.new(@x*scalar, @y*scaler)
  end

  def [](index)
    case index
    when 0, -2 then @x
    when 1, -1 then @y
    when :x, "x" then @x
    when :y, "y" then @y
    else nil
    end
  end
    
end

another_point = AnotherPoint.new(1,1)
another_point_two = AnotherPoint.new(2,2)

sum_of_point = another_point + another_point_two

puts "The sum of x is: #{sum_of_point.x}"

negate = -another_point
puts "The negative value of another point #{negate.x} #{negate.y}"



# Type Checking and Duck Typing
# It is fairly common in Ruby programming to be loose about the definition of "suitable". In the case of our + method,
# any

# Duck typing is a concept of programming that always assume the value that will passed to methods with no other verification.
# def +(other)
#   raise TypeError, "Point argument expected" unless other.is_a? Point
#   Point.new(@x + other.x, @y + other.y)
# end

# Array and Hash Access with []
# Ruby uses square brackets for array and hash access, and allows any class to define a [] method and use these
# brackets itself. 
puts "Accessing index of Point x: #{another_point[0]}"

# A Class Method

# Let's take another approach to adding Point objects together. Instead of invoking an instance method of one 
# Point and passing another point to that method, let's write a method named sum that takes any number 

# Using self instead of Point makes the code slightly less clear, but it’s an application of the 
# DRY (Don’t Repeat Yourself) principle. If you use self instead of the class name, 
# you can change the name of a class without having to edit the definition of its class methods.

class Point
  attr_reader :x, :y

  def initialize(x,y)
    @x,@y = x,y
  end

  def self.sum(*points)
    x = y = 0
    points.each {|p| x += p.x; y += p.y}
    Point.new(x,y)
  end
end

# Constants
# Many classes can benefit from the definition of some associated constants. Here are some constants that might
# be useful for our Point class:

class Point
  attr_reader :x, :y

  def initialize(x,y)
    @x,@y = x,y
  end

  ORIGIN = Point.new(0,0)
  UNIT_X = Point.new(1,0)
  UNIT_Y = Point.new(0,1)

  def +(other)
    raise TypeError, "Point argument expected" unless other.is_a? Point
    Point.new(@x + other.x, @y + other.y)
  end

end

# Inside our class definition, these constant can be referred to by their uniqualified names.
# To access the constants that you define inside the class is using:
puts Point::UNIT_X + Point::UNIT_Y

# Note in using constants, we cannot redefine our constant like doing so, Point::UNIT_X = Point.new(-1,0)

# Class Variables

# Class Variables are visible to, and shared by, the class methods and the instance methods of a class,
# and also by the class definition itself. Like instance variables, class variables are encapsulated; they can be used 
# by the implementation of a class, but they're not visible to the user of class. Class variables have names
# that begin with @@.

# Note:
# Class variables are shared by all objects of a class, Instance variables belong to one object.
# In using class variables you can initialize the value of a class inside the constructor
class Point
  # Initialize our class variables in the class definition itself
  @@n = 0 
  @@totalX = 0 
  @@totalY = 0
  def initialize(x,y) 
    @x,@y = x, y
    # How many points have been created # The sum of all X coordinates
    # The sum of all Y coordinates
    # Initialize method
    # Sets initial values for instance variables
    # Use the class variables in this instance method to collect data 
    @@n += 1 # Keep track of how many Points have been created 
    @@totalX += x # Add these coordinates to the totals
    @@totalY += y
  end
  # A class method to report the data we collected 
  def self.report
    # Here we use the class variables in a class method puts "Number of points created: #@@n"
    puts "Average X coordinate: #{@@totalX.to_f/@@n}" 
    puts "Average Y coordinate: #{@@totalY.to_f/@@n}"
  end 
end

a = Point.new(1,1)
Point.report

b = Point.new(3,3)
Point.report

# Method Visibility: Public, Protected, Private
# Instance methods may be public, private, or protected.

class Point
  # public methods go here
  # The following methods are protected 
  protected
  # protected methods go here
  # The following methods are private 
  private
  # private methods go here 
end

# The methods may also invoked with the names of one or more methods as arguments.

class Widget
  def x
    @x
  end
  protected :x

  def utility_method
    nil
  end
  private :utility_method
end

# Remember that public, private, protected apply only to methods in Ruby. Instance and class variables
# are encapsulated and effectively private, and constants are effectively public. There's no way to make
# an instance variable accessible from outside a class

# Since Ruby is metaprogramming style you can invoke the private method defined in the class Widget above
# using this code.

w = Widget.new # Create a Widget
w.send :utility_method # Invoke private method! 
w.instance_eval { utility_method } # Another way to invoke it 
w.instance_eval { @x } # Read instance variable of w

# Subclassing and Inheritance

# Ruby's provide a capability to do subclassing whose behaviour was based on the existing class.

# The syntax for extending a class is simple. Just add a < character and the name of the superclass to your class statement
# For example:
class Point3D < Point
end

# Overrding Methods
# When we define a new class, we add behavior to it by defining new methods. Just as importantly, however, we
# can customize the inherited behaviour of the class by redefining inherited methods.

# One of the important things to understand about object-oriented programming and subclassing is that when methods are invoked,
# they're looked up dynamically so that the appropriate definition or redefinition of the method is found.

class WorldGreeter
  def greet
    puts "#{greeting} #{who}"
  end

  def greeting
    "Hello"
  end

  def who
    "World"
  end
end

class SpanishWorldGreeter < WorldGreeter
  def greeting
    "Hola"
  end
end

SpanishWorldGreeter.new.greet


# Abstract Class

class AbstractGreeter
  def greet
    puts "#{greeting} #{who}"
  end
end

class WorldGreeter < AbstractGreeter
  def greeting; "Hello"; end
  def who; "World"; end
end

WorldGreeter.new.greet


# Augmenting Behavior by Chaining
# Sometimes when we override a method, we don't want to replace it altogether, we just want to augment its 
# behaviour by adding new code. In order todo this, we need a way to invokke the overridden method from the 
# overriding method. This is known as chaining, and it is accomplished with the keyword super.
class Point3D < Point 
  def initialize(x,y,z)
    super(x,y)
    @z = z; 
  end

  def to_s
  "(#@x, #@y, #@z)" # Variables @x and @y inherited?
  end 
end

# The to_s method in Point3D references the @x and @y variables from the superclass Point. 
# This code works as you probably expect it to:
Point3D.new(1,2,3).to_s # => "(1, 2, 3)"