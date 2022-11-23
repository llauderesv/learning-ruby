class Ambiguous
  def x; 1; end # A method named "x". Always return 1

  def test
    puts x # No variable has been seenl refers to method above; prints 1

    # The line below is never evaluated, because of the "if false" clause. But
    # the parser sess it and treats x as a variable for the rest of the method.
    x = 0 if false

    puts x # x is a variable, but has never been assigned to: prints nil

    x = 2 # This assignement does get evaluated
    puts x # So now this line prints 2
  end
end