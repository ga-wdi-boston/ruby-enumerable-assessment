# Ruby enumerable diagnostic
class Diagnostic
  # Question 1
  # Write ruby code to return the longest entry in the
  # enumerable supplied.  Assume each entry implements a length
  # method that returns a Fixnum.
  def longest(enum)
    enum.reduce { |memo, obj| memo.length > obj.length ? memo : obj }
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
    numbers.odd?
  end

  # Question 4
  # Write ruby code that returns true if every entry in the
  # numbers enumerable are even
  def every_even(numbers)
    array = enum.each_with_object([]) { numbers.even? ? true : false }
    array.include?(false) ? false : true
  end

  # Question 5
  # Write ruby code that returns an array with all of the
  # entries from the words enumerable capitalized (i.e. 'foo' becomes 'Foo').
  def transform(words)
    words.each_with_object([]) { words.capitalize! }
  end

  # Question 6
  # Write ruby code to read each line from the file
  # named filename. Concatenate the lines together after
  # replacing the trailing newline character with a
  # space and return the result.
  def read_file(filename)
    lines = File.open(ARGV[0]) do |file|
      file.map(&:itself)
    end

    puts lines
  end
end
