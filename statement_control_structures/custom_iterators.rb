# Writing Custom Iterators
# The defining feature of an iterator method is that it invokes a block of code associated
# with the method invocation. You do this with the yield statement. 
def twice
  yield "Thank you!"
  yield "Thank you!", "Another example message"
end

twice {|message, exampleMessage| puts "#{message} #{exampleMessage}"}

# Another example of a Ruby iterator; it passes two arguments to its block.

def circle(r,n)
  n.times do |i|
    angle = Math::PI * 2 * i / n
    yield r*Math.cos(angle), r*Math.sin(angle)
  end
end
