first_name = 'Vincent Llauderes'

puts ('Hello World ' + first_name.upcase())

puts first_name.downcase

puts "Apple Pangantihon".strip().length()

message = "Hello World"

puts message[0, 5]

puts message.index("llo")

num1 = 1
num2 = 2

puts ("The sum of two integer is " + (num1 + num2).to_s)

def diplay_message(name)
  puts "Hello #{name}"
end

diplay_message("Vincent Llauderes")

h = {
  :one => 1,
  :two => 2
}

h[:one]
h[:three] = 3
h.each do |key, value|
  puts "#{value}:#{key}; "
end

# Iterators
a = [1,2,3,4,5]
b = a.map { |x| x*x }

puts b

def square(x)
  x * x
end

squareRootOfNine = square(9)
puts "Square Root of Nine: #{squareRootOfNine}"

# When a method, like the one above, is defined outside of a class or a module, 
# it is effectively a global function rather than a method to be invoked on an object. 
# (Technically, however, a method like this becomes a private method of the Object class.)

def are_you_sure()
  while true
    print "Are you sure? [y/n]: "
    response = gets
    case response
    when /^[yY]/
      return true
    when /^[nN]/, /^$/
      return false
    end
  end
end

are_you_sure()