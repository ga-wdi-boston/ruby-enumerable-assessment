# Ruby enumerable diagnostic
class Diagnostic
  # Question 1
  # Write ruby code to return the longest entry in the
  # enumerable supplied.  Assume each entry implements a length
  # method that returns a Fixnum.
  def longest(enum)

  end

  # Question 2
  # Write ruby code to return the sum of entries in the
  # enumerable supplied (i.e. apply the `+` operator)
  # Assume each entry implements a `+` method
  def sum(enum)
    enum.reduce do |sum, n|
      sum + n
    end
  end

  # Question 3
  # Write ruby code that returns true if some of the entries
  # in the numbers enumerable are odd
  def some_odd(numbers)
  end

  # Question 4
  # Write ruby code that returns true if every entry in the
  # numbers enumerable are even
  def every_even(numbers)
    numbers.even?
  end

  # Question 5
  # Write ruby code that returns an array with all of the
  # entries from the words enumerable capitalized (i.e. 'foo' becomes 'Foo').
  def transform(words)

  end

  # Question 6
  # Write ruby code to read each line from the file
  # named filename. Concatenate the lines together after
  # replacing the trailing newline character with a
  # space and return the result.
  def read_file(filename)
      lines = File.open(filename[0]) do |file|
      file.each_with_object(lines: 0, new_lines: 0) do |line, memo|
        memo[:lines] += line.split()
        memo[:new_lines] += line.join(' ')
      end
  end
end
