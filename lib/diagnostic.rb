# Ruby enumerable diagnostic
#
class Diagnostic
  # Question 1
  # Write ruby code to return the longest entry in the list supplied.
  # Assume each entry in the list implements a length method that returns
  # a Fixnum.
  def longest(list)
    result = File.open(ARGV[0]) do |file|
    file.length do | file, i|
    # Your code goes here
  end
  file.

  # Question 2
  # Write ruby code to return the sum of entries in the
  # list supplied (i.e. apply the `+` operator).
  # Assume each entry implements a `+` method.
  def sum(list)
    list_product = File.open(ARV[0])
    list_product.reduce = sum
    sum = numbers.select{|num| num}.reduce(:+)
    puts sum

    # Your code goes here
  end

  # Question 3
  # Write ruby code that returns true if some of the entries
  # in the list of numbers are odd
  def some_odd(numbers)
    numbers = File.open(ARGV[0])
    numbers.reduce = numbers_odd
    numbers_odd = numbers.select{|e|e.odd?}
    puts numbers_odd
    # Your code goes here
  end

  # Question 4
  # Write ruby code that returns true if every entry in the
  # list of numbers are even
  def every_even(numbers)
    # Your code goes here
    numbers = File.opem(ARV[0])
    numbers.reduce = numbers_even
    numbers_even = numbers.select{|e|e.!odd?}
    puts numbers_even
  end

  # Question 5
  # Write ruby code that returns an array with all of the
  # entries from the list of words capitalized (i.e. 'foo' becomes 'Foo').
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
