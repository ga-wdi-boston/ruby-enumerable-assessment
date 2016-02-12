# Ruby enumerable diagnostic
class Diagnostic
  # Question 1
  # Write ruby code to return the longest entry in the
  # enumerable supplied.  Assume each entry implements a length
  # method that returns a Fixnum.
  def longest(enum)
    enum.max_by {|x| x.length}
  end

  # Question 2
  # Write ruby code to return the sum of entries in the
  # enumerable supplied (i.e. apply the `+` operator)
  # Assume each entry implements a `+` method
  def sum(enum)
    enum.reduce(:+)
  end

  # Question 3
  # Write ruby code that returns true if some of the entries
  # in the numbers enumerable are odd
  def some_odd(numbers)
    numbers.any? {|x| x.odd?}
  end

  # Question 4
  # Write ruby code that returns true if every entry in the
  # numbers enumerable are even
  def every_even(numbers)
    numbers.all? {|x| x.even?}
  end

  # Question 5
  # Write ruby code that returns an array with all of the
  # entries from the words enumerable capitalized (i.e. 'foo' becomes 'Foo').
  def transform(words)
    words.map {|word| word.capitalize}
  end

  # Question 6
  # Write ruby code to read each line from the file
  # named filename. Concatenate the lines together after
  # replacing the trailing newline character with a
  # space and return the result.
  def read_file(filename)
    # file = File.new(filename)
    # file.reduce {|memo, line| memo = line.sub(\n, )}
  end
end
