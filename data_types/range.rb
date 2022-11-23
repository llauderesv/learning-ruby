# Ranges
# A Range object reprents the values between a start value and an end value. Range literals are written
# by placing two or three dots between the starts and end value.
cold_war = 1945...1989

print cold_war.include? 1990
print cold_war.to_a

r = 0...100

print r.to_a