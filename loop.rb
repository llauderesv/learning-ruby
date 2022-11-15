# x = 1
# while x <= 5
#   yield x
#   x += 1
# end

module Sequences # Begin a new module
  def self.fromtoby(from, to, by) # A singleton method of the module
    x = from 
    while x <= to
      yield x
      x += by 
    end
  end 
end

Sequences.fromtoby(1, 10, 2) { |x| puts x }

def message(name)
  yield name
end

message("Vince") { |message| puts "Hello #{message}" }