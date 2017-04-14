# frozen_string_literal: true
list = 1..10
# Ruby enumerable diagnostic
class Diagnostic
  # Question 1
  # Write ruby code to return the longest entry in the list supplied.
  # Assume each entry in the list implements a length method that returns
  # a Fixnum.
  def longest(list)
    list.max
  end
  longest(list)
  # Question 2
  # Write ruby code to return the sum of entries in the
  # list supplied (i.e. apply the `+` operator).
  # Assume each entry implements a `+` method.
  def sum(list)
    list.reduce(:+)
  end
  sum(list)

  # Question 3
  # Write ruby code that returns true if some of the entries
  # in the list of numbers are odd
  def some_odd(list)
    list.any? { :odd? }
  end
  some_odd(list)

  # Question 4
  # Write ruby code that returns true if every entry in the
  # list of numbers are even
  def every_even(numbers)
    # numbers.select { :even? } NOT SURE WHY THIS ISN:T WORKING BUT WHEN I TEST IT BOMBS
    numbers.select { |num| num.even? }
  end
  every_even(list)

  # Question 5
  # Write ruby code that returns an array with all of the
  # entries from the list of words capitalized (i.e. 'foo' becomes 'Foo').
  test_list = ['foo','foo','fooooooo']

  def transform(words)
    words.each { |word| word.capitalize! }
    # words.each { :capitalize! }
  end

  transform(test_list)

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
