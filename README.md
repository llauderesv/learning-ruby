# Learning Ruby Programming Language 💎

Source: [freeCodeCamp](https://www.youtube.com/watch?v=t_ispmWmdjY&t=736s)

## print 

Use to output / display text in a command line example

```ruby
print "Hello World" 
# Display Hello World
```

## puts

Same with print but it added an new line character after the display to output.

```ruby
puts "Hello World"
puts "Vincent Llauderes"
# Display 
# Hello World
# Vincent Llauderes
```

## Variables

Creating a variable in Ruby is easy just type the name of the variable that you want like you want to create variable name that holds the first name of user, `first_name = "Vincent Llauderes"`

You can use the plus (+) sign the concatenate values in string in Ruby like `"My name is" + first_name`.

```ruby
first_name = "Vincent Llauderes"
```

## Basic Data Types
Ruby support a bunch of Data Type to use in declaring a variable
- string - Any information that was stored as plain text or enclose in double /single quote is considered string (e. g. `name = "Vincent Llauderes" `)
- integer - Any whole number (e.g. `age = 18`).
- decimal - Integer number that contains decimal (e.g. `gpa = 3.2`).
- boolean - values it's either `true` or `false`
- nil - Data Type that it doesn't have a values (e.g. `flaws = nil`)
```ruby
name = "Vincent" # string
age = 18 # integer
gpa = 3.2
isMale = true
isTall = true
flaws = nil
```

## String Manipulation 

There are many built string method that you can use in Ruby to manipulate the Strings.
- `upcase()` - Make the string all uppercase letter.
- `downcase()` - Make the string all lowercase letter.
- `strip()` - Remove the necessary white spaces in the string.
- `index("?")` - Get the index of a character within the string.

You can access the string individual values by using the index based. 

### Example
```ruby
message = "Hello World"
puts message[1]

# Display e
```

You can also access a range of string values by using the `[0...n]`.

### Example
```ruby
message = "Hello World"
puts message[0, 5]

# Display Hello 
```

## Math

Same with other programming languages, Ruby can evaluate expression in math like `5 + 5 = 10`.

```ruby
num1 = 1
num2 = 2

puts num1 + num2

# Display 3
```

Converting a math / integer to string you can use the method of `.to_s`

```ruby
num1 = 1
num2 = 2

puts ("The sum of two integer is " + (num1 + num2).to_s)

# Display 3
```

## Yield

Is a values that return inside a block of code

```ruby
def message(str)
  yield str
end

message("Vince") { 
  |x|
  puts "Hello #{x}"
}

# Display Hello Vince
```

Sample Change