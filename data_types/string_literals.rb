#!/usr/bin/ruby -w

# puts "This string literal ends with a single backslash: \\ #{1+1}"
greeting = "Hello"
greeting << " " << "World"

puts greeting

ellipsis = greeting*3 # Evaluates to '...'

puts ellipsis


# Altering values

s = 'hello'
s[0] = "H" # Replace first character with a capital H

puts s

while(s["l"])
  s["l"] = ?L;
end

puts s

s.each_char {
  |x|
  print "#{x}"
}