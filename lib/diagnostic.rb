# Ruby enumerable diagnostic
class Diagnostic
  # Question 1
  # Write ruby code to return the longest entry in the list supplied.
  # Assume each entry in the list implements a length method that returns
  # a Fixnum.
  def longest(list)
    # Your code goes here
    list.max
  end

  # Question 2
  # Write ruby code to return the sum of entries in the
  # list supplied (i.e. apply the `+` operator).
  # Assume each entry implements  a `+` method.
  def sum(list)
    # Your code goes here
    sum = 0
    list.each.to_i { |i| sum += i }
  end

  # Question 3
  # Write ruby code that returns true if some of the entries
  # in the list of numbers are odd
  def some_odd(numbers)
    # Your code goes here
   numbers.any? { |x| x.to_i % 2 != 0}
  end


  # Question 4d
  # Write ruby code that returns true if every entry in the
  # list of numbers are even
  def every_even(numbers)
    # Your code goes here
     numbers.all? { |x| x.to_i % 2 == 0 }
  end

  # Question 5
  # Write ruby code that returns an array with all of the
  # entries from the list of words capitalized (i.e. 'foo' becomes 'Foo').
  def transform(words)
    # Your code goes here
    words.first.upcase
  end

  # Question 6
  # Write ruby code to read each line from the file
  # named filename. Concatenate the lines together after
  # replacing the trailing newline character with a
  # space and return the result.
  def read_file(filename)
    # Your code goes here
  File.open('filename') do |file|
  str = ""
  file.each do |line|
  str.concat(line)
  return str
end
  end
end
end
