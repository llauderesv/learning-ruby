# Modules
# Modules as namespaced 
# Modules are good way to group related methods when object-oriented programming is not neceesary.

# Suppose, for example you were writing methods and encode and decode binary data to and from text usin
# Base64 encoding

# Modules would likely to contain a constant for example our Base64 Module would have DIGITS constant.

module Base64
  DIGITS = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'

  def self.encode
    puts "Calling encoding"
  end

  def self.decode
    puts "Calling decoding"
  end
end

Base64.encode
Base64.decode

# Nested Namespaces

# You can nest you modules inside a module like example below:

module Base642
  DIGITS = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
  class Encoder 
    def encode 
    end
  end
  class Decoder 
    def decode 
    end
  end
  # A utility function for use by both classes 
  def Base64.helper
  end
end

# Includable Namespace Modules
# It is possible to define modules that define a namespace but still allow their methods to be mixed in

# Example
Math.sin(0)
include Math
puts sin(0)

# module_function
# Using module_function it will invoke your instance method as a function if you include your Modules

# When defining a module function, you should avoid using self, because the value of self will 
# depend on how it is invoked. It is certainly possible to define a module function that behaves differently 
# depending on how it is invoked. But if you are going to do that, then it makes more sense to simply define one class method and one instance method.
module ModName
  def aux
    puts 'aux'
  end

  def self.bar
    aux
    puts "Calling aux"
  end

  module_function :aux
end

ModName.bar
include ModName
aux

# require and load in Ruby
# Ruby programs can be structured and organized into separate files. By using require and load you can separate your 
# non trivial code with the others.

# The Load Path
# You can access the Load Path using the $LOAD_PATH or $: