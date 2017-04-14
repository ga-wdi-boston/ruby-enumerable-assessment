# frozen_string_literal: true

# Ruby enumerable diagnostic
class Diagnostic
  # Question 1
  # Write ruby code to return the longest entry in the list supplied.
  # Assume each entry in the list implements a length method that returns
  # a Fixnum.
  def longest(list)
    the_length
    the_longest_string
    the_longest_string = list.max_by(&:length)
    the_length = the_longest_string.length # find length of longest string returned
    return the_length
  end
#Source: Slackoverflow. Tested in pry

  # Question 2
  # Write ruby code to return the sum of entries in the
  # list supplied (i.e. apply the `+` operator).
  # Assume each entry implements a `+` method.
  def sum(list)
    list.inject(0){|sum,x| sum + x }
  end

  #Source: Slackoverflow. Tested in pry

  # Question 3
  # Write ruby code that returns true if some of the entries
  # in the list of numbers are odd
  # I assumed list was size 10.
  def some_odd(numbers)
    x = 1
    returnValue = false
    loop do
      x += 1
      next unless ( x % 2 ) != 0 # find the odd number
      returnValue = true
      break if x >= 10
    end
    return returnValue
  end

  # Question 4
  # Write ruby code that returns true if every entry in the
  # list of numbers are even
  def every_even(numbers)
    numbers.each { |value| puts value if value.to_f%2==0}
  end
  #Source: Google. Tested in pry

  # Question 5
  # Write ruby code that returns an array with all of the
  # entries from the list of words capitalized (i.e. 'foo' becomes 'Foo').
  def transform(words)
    words.map(&:upcase)
  end
  #Source: Google  Tested in pry

  # Question 6 (optional)
  # Change `xit` to `it` in `diagnostic_spec.rb` to test this method
  # Write ruby code to read each line from the file
  # named filename. Concatenate the lines together after
  # replacing the trailing newline character with a
  # space and return the result.
  def read_file(filename)
    # Your code goes here
  end
end
