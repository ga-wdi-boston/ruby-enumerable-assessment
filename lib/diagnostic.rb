# Ruby enumerable diagnostic
class Diagnostic
  # Question 1
  # Write ruby code to return the longest entry in the
  # enumerable supplied.  Assume each entry implements a length
  # method that returns a Fixnum.
  def longest(enum)
    # Your code goes here
    longest = enum.reduce do |memo, obj|
      memo.length > obj.length ? memo : obj
    end
    p longest
  end

  # Question 2
  # Write ruby code to return the sum of entries in the
  # enumerable supplied (i.e. apply the `+` operator)
  # Assume each entry implements a `+` method
  def sum(enum)
    # Your code goes here
    total = enum.reduce(:+)
    p total
  end

  # Question 3
  # Write ruby code that returns true if some of the entries
  # in the numbers enumerable are odd
  def some_odd(numbers)
    # Your code goes here
   numbers.one? { |num| num.odd? }
  end

  # Question 4
  # Write ruby code that returns true if every entry in the
  # numbers enumerable are even
  def every_even(numbers)
    evens = numbers.all { |num| num.even? }
    puts evens
  end

  # Question 5
  # Write ruby code that returns an array with all of the
  # entries from the words enumerable capitalized (i.e. 'foo' becomes 'Foo').
  def transform(words)
    lines = filename.open(ARGV[0]) do |file|
      file.map(&:itself).capitalize
    end

    print lines
  end

  # Question 6
  # Write ruby code to read each line from the file
  # named filename. Concatenate the lines together after
  # replacing the trailing newline character with a
  # space and return the result.
  def read_file(filename)
    lines = filename.open(ARGV[0]) do |file|
      file.map(&:itself)
    end

  print lines
end
