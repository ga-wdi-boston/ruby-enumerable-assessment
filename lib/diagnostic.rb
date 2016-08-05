# Ruby enumerable diagnostic
class Diagnostic
  # Question 1
  # Write ruby code to return the longest entry in the list supplied.
  # Assume each entry in the list implements a length method that returns
  # a Fixnum.
  def longest(list)
    list.max
  end

  # Question 2
  # Write ruby code to return the sum of entries in the
  # list supplied (i.e. apply the `+` operator).
  # Assume each entry implements a `+` method.
  def sum(list)
    list.reduce(0, &:+)
  end

  # Question 3
  # Write ruby code that returns true if some of the entries
  # in the list of numbers are odd
  def some_odd(numbers)
    numbers.any?(&:odd?)
  end

  # Question 4
  # Write ruby code that returns true if every entry in the
  # list of numbers are even
  def every_even(numbers)
    numbers.all?(&:even?)
  end

  # Question 5
  # Write ruby code that returns an array with all of the
  # entries from the list of words capitalized (i.e. 'foo' becomes 'Foo').
  def transform(words)
    words.split.map(&:capitalize)
  end

  # Question 6
  # Write ruby code to read each line from the file
  # named filename. Replace the trailing newline character with a space,
  # concatenate the lines together, and return the result.

  # Was not able to finish this one, hope I'm on the right track.
  def read_file(filename)
    result = File.open(filename).each_line.strip do |file|
      file += file
    end
    p result
  end
end
