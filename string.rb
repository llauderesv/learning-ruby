document = <<HERE # This is how we beging a here document
This is a string literal.
It has two lines and abruptly ends...
HERE

puts document

# String literals and mutability
# Strings are mutable in Ruby. 
4.times { puts String.new("test") }