# Ranges
# A Range object reprents the values between a start value and an end value. Range literals are written
# by placing two or three dots between the starts and end value.

# There are two types of ranges .. (double dot) and the ... (tripple dot). Double dot doesn't include the last
# digit in the range for example of you write 1..10 it doesn't include 10 in the range. But if you use the 
# tripple dot it will include the last digit in the range.
cold_war = 1945...1989

print cold_war.include? 1990
print cold_war.to_a

r = 0...100
y = 0..100

print "Range using .. (double dot) #{r.to_a}"
print "Range using ... (tripple dot) #{y.to_a}"