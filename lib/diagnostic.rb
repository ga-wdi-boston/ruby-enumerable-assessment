# frozen_string_literal: true

# Ruby enumerable diagnostic
class Diagnostic
  # Question 1
  # Write ruby code to return the longest entry in the list supplied.
  # Assume each entry in the list implements a length method that returns
  # a Fixnum.
  def longest(list)
    list.each.length.max ...?
  end

# I'll need to review this but I understand we're trying to find the longest word in the list.
# We would need to iterate through each item in the array and determine the length of each word.
# Then find and return the maximum number based on the longest word of the list.

  # Question 2
  # Write ruby code to return the sum of entries in the
  # list supplied (i.e. apply the `+` operator).
  # Assume each entry implements a `+` method.
  def sum(list)
    list.reduce(:+)
  end

  # Question 3
  # Write ruby code that returns true if some of the entries
  # in the list of numbers are odd
  def some_odd(numbers)
    numbers.select(&:odd?).any?
  end

  # Question 4
  # Write ruby code that returns true if every entry in the
  # list of numbers are even
  def every_even(numbers)
    numbers.select(&:even?).all?
  end

  # Question 5
  # Write ruby code that returns an array with all of the
  # entries from the list of words capitalized (i.e. 'foo' becomes 'Foo').
  def transform(words)
    words.map.capitalize
  end

# This seems to only work when capitalizing a string. Here, I would assume we
# need to use .map in order to come up with a new array before individually
# capitalizing each word.

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
