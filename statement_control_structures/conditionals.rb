# Conditionals
# is way of telling the computer to conditionally execute some code: to exeucte it only 
# if some condition is satisfied.
x=9
# if
# The most straightforward of the conditionals is if. In its simplest form, it looks like this:
if x < 10 # newline separator
    x += 1
end

# If you want to make your if statment oneliner you can use the then separator.
if x < 10 then x += 1 end # then separator

# You can also use then as the separator token, and follow it with a newline. Doing so
# makes your code robust; it will work even if the newline is subsequently removed:
if x < 10 then
  x += 1
end

# Important to remember in writing conditional statement

# Parenthesis are not required (and typically not used) around the conditional expression.
# The newline, semicolon, or then keyword serves to delimit the expression instead.

# The end keyword is required, even when the code to be conditionally executed consists of a 
# single statement. The modifier form of if, described below, provides a way to write 
# simple conditionals without the end keyword.



# else
# An if statement may include an else clause to specify code to be executed if the condition
# is not true:
# Example:

# if expression
#   code
# else
#   code
# end
data=[10, 20]

# Here is an example of a conditional that includes an else clause:
x = 10
if data
  data << x
else
  data = [x]
end

puts "There are #{data.to_a} in an array"


# elsif
# If you want to test more than one condition within a conditional, you can add one or
# more elseif clauses between an if and else. elseif is 

# if expression1 
#   code1
# elsif expression2 
#   code2
# . . .
# elsif expressionN 
#   codeN
# else
#   code
# end



# Return value
# The return value of an if "statement" (i.e, the value that results from evaluating an if 
# expression) is the value of the last expression in the code that was executed, or nil if no
# block of code was executed

# Example:
def return_val(x)
  if x == nil || x == ""
    "No value was given"
  else
    "There's a value!"
  end
end

puts return_val ""

# if As a Modifier
# When if is used in its normal statement form, Ruby's grammer requires that it be terminated
# with the end keyword. For example, single-line conditionals, this is somewhat awkward. This is just a
# parsing problem, and the soln is to use if keyword itself as the delimeter separates the code to be 
# executed from the conditional expression. Instead of writing:
# if expression then code end

# we can simply write:
# code if expression

y=11
puts "The value of y is greater than 10" if y > 10

# This syntax places more emphasis on the code to be executed, and less emphasis on the condition 
# under which it will be executed. Using this syntax can make your code more readable when the condition 
# is a trivial one or when the condition is almost always true.

# unless
# unless, as a statement or a modifier, is the opposite of if: it executes code only if an associated expression
# evaluates to false or nil. It's syntax is just like if, except that elseif clauses are not allowed:

# case 
# The case statement is a multiway conditional. There are two forms of this statement. 
# The simple (and infrequently used) form is nothing more than an alternative syntax for if/elsif/else. 
# These two side-by-side expressions are equivalent:

# name = case 
# when x == 1 then "one"
# when x == 2 then "two"
# when x == 3 then "three"
# else "many"
# end

name = if x == 1 then "one"
       elsif x == 2 then "two"
       elsif x == 3 then "three"
       else "many"
       end

puts name

# Take different actions depending on the class of x
puts case x 
     when String then "string"
     when Numeric then "number"
     when TrueClass, FalseClass then "boolean"
     else "other"
     end

# Compute 2006 U.S income tax using case and Range Objects
tax = case income 
      when 0..7550
        income * 0.1
      when 7550..30650
        755 + (income - 7550) * 0.15
      when 30650..74200
        4220 + (income-30655)*0.25
      when 74200..154800
        15107.5 + (income-74201)*0.28
      when 154800..336550
        37675.5 + (income-154800)*0.33
      else
        97653 + (income-336550)*0.35
      end


# A when clause can have more than more than one expression associated with it. Multiple expressions
# are separated by commas, and the === operator is invoked on each one. That is, it is possible to 
# trigger the same block of code with more than one value:

def hasValue?(x)
  case x
  while nil, [], "", 0
    false
  else
    true
  end
end

# ?: Operator
# The conditional operator ?:, behaves much like an if statement, with ? replacing then and : replacing else.
# It provides a succinct way to express conditionals:

def how_many_message(n) # Handle singular / plural
  "You have " + n.to_s ( n ==1 ? " message." : " messages.")
end


# 20.times { |x| puts "Current value is: #{x}" }