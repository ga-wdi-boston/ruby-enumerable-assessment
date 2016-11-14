# frozen_string_literal: true

# Ruby enumerable diagnostic
class Diagnostic
  # Question 1
  # Write ruby code to return the longest entry in the list supplied.
  # Assume each entry in the list implements a length method that returns
  # a Fixnum.
  def longest(list)
    list.reduce (list.first) { |a, b| b.length < a.length ? a : b }
  end

  # Question 2
  # Write ruby code to return the sum of entries in the
  # list supplied (i.e. apply the `+` operator).
  # Assume each entry implements a `+` method.
  def sum(list)
    list.reduce { |acc, el| acc += el }
  end

  # Question 3
  # Write ruby code that returns true if some of the entries
  # in the list of numbers are odd
  def some_odd(numbers)
    numbers.any? { |n| !(n % 2).zero? }
  end

  # Question 4
  # Write ruby code that returns true if every entry in the
  # list of numbers are even
  def every_even(numbers)
    numbers.all? { |n| (n % 2).zero? }
  end

  # Question 5
  # Write ruby code that returns an array with all of the
  # entries from the list of words capitalized (i.e. 'foo' becomes 'Foo').
  def transform(words)
    words.map(&:capitalize)
  end

  # Question 6 (optional)
  # Change `xit` to `it` in `diagnostic_spec.rb` to test this method
  # Write ruby code to read each line from the file
  # named filename. Concatenate the lines together after
  # replacing the trailing newline character with a
  # space and return the result.
  def read_file(filename)
    file = File.open(filename)
    ret = []
    until file.eof?
      line = file.readline
      # puts line[0..-2]
      ret << line[0..-2]
    end
    ret.join(' ')
  end
end
