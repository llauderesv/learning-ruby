# Journey to Ruby Programming Language 💎

My learning Journey in the Ruby Programming Language

References: 
- [freeCodeCamp Course](https://www.youtube.com/watch?v=t_ispmWmdjY&t=736s)
- [Ebook - The Ruby Programming Language](https://www.oreilly.com/library/view/the-ruby-programming/9780596516178/)

Differences with other programming languages.

### Newlines as statement terminators
Semicolon in Ruby is optional unlike in any other programming languages like C or Java they're required in a statement. But in Ruby, this is optional unless you have a multiple statements in a one line and that would require a semicolon to determine the statement.

### Whitespace dependency


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

## Asterisk (*)

The * operator expects an integer as its righthand operand. 
It returns a String that repeats the text specified on the lefthand side the number of times specified by the righthand side:

```ruby
ellipsis = '.'*3 # Evaluates to '...'
```

## Accessing Characters and Substrings

The most important operator supported by String is the square-bracket array index operator `[]`, which is used for extracting or altering portions of a string. This operator is quite flexible and can be used with a number of different operand types. 

### Ruby 1.8 returns character code in accessing the string characters via index.

```ruby
s = 'hello';  # Ruby 1.8
s[0] # 104: the ASCII character code for the first character 'h' 
s[s.length-1] # 111: the character code 
s[-1] # of the last character 'o'# 111: another way of accessing the last character
s[-2] # 108: the second-to-last character
s[-s.length] # 104: another way of accessing the first character
s[s.length] # nil: there is no character at that index

```

### Ruby 1.9 returns single character strings rather than character codes
```ruby
s = 'hello';        # Ruby 1.9
s[0]                # 'h': the first character of the string, as a string 
s[s.length-1]       # 'o': the last character 'o'
s[-1]               # 'o': another way of accessing the last character
s[-2]               # 'l': the second-to-last character
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

## Control Flow
Like in any other programming language, Ruby has also a control flow in programming language.

## If
Using if in Ruby to check the condition of the value was met or not.

```ruby
x = 1
if x < 10 then
  x = x + 1
end

puts "The value of x: #{x}"

# Display "The value of x: 2"
```


## File Structure

In writing a Ruby code the file should a shebang to determine that code was ruby language and executed by Ruby programs.


```ruby
#!/usr/bin/ruby -w                            shebang comment coding comment
# -*- coding: utf-8 -*- require 'socket'      load networking library
...                                           program code goes here
__END__ ...                                   mark end of code program data goes here
```


## Operators

An operator is a token in the Ruby Language that represents an operation (such as addition or comparison) to be performed on one or more operands. The operands are expressions, and operators allow us to combine these operand expressions into larger expressions. 