# Ruby enumerable assessment
class Assessment
  # Question 1
  # Write ruby code to return the longest entry in the
  # enumerable supplied.  Assume each entry implements a length
  # method that returns a Fixnum.
  def longest(enum)
    enum.max_by { |x| x.length }
    # I didn't figure out how to solve this, but was testing ways to use the above line found at http://ruby-doc.org/core-2.1.0/Enumerable.html#method-i-max_by
  end

  # Question 2
  # Write ruby code to return the sum of entries in the
  # enumerable supplied (i.e. apply the `+` operator)
  # Assume each entry implements a `+` method
  def sum(enum)
    enum.reduce {0, :+}
    # I was looking for a solution based on info I found here:
    # http://stackoverflow.com/questions/1538789/how-to-sum-array-of-numbers-in-ruby
    # and the enumerable exercise we did with fibonacci in class yesterday
  end

  # Question 3
  # Write ruby code that returns true if some of the entries
  # in the numbers enumerable are odd
  def some_odd(numbers)
    numbers.select(&:odd?)
    # I based this answer off of the enumerables exercise we did in class yesterday with fibonacci numbers to find the sum of odd numbers: fibs.select(&:odd?).reduce(&:+), "\n"
  end

  # Question 4
  # Write ruby code that returns true if every entry in the
  # numbers enumerable are even
  def every_even(numbers)
    # Your code goes here
  end

  # Question 5
  # Write ruby code that returns an array with all of the
  # entries from the words enumerable capitalized.
  def transform(words)
    # Your code goes here
  end

  # Question 6
  # Write ruby code to read each line from the file
  # named filename. Concatenate the lines together after
  # replacing the trailing newline character with a
  # space and return the result.
  def read_file(filename)
    # Your code goes here
  end
end
