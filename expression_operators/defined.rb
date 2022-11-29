# Defined
# defined? is a unary operator that tests whether its operand is defined or not. 
# Normally, using an undefined variable or method raises an exception. When the expression
# on the right of the defined? 


def f(x)
  if (x == 9)
    return nil
  end
  return x*x
end

y = f(9) if defined? f(9)

puts "The value is #{y}"



puts defined? nil