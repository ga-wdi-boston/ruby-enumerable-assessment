# Ruby enumerable diagnostic
class Diagnostic
  # Question 1
  # Write ruby code to return the longest entry in the list supplied.
  # Assume each entry in the list implements a length method that returns
  # a Fixnum.
  def longest(list)
    @long = list.inject { |a, e| a.length > e.length ? a : e }
    puts "#{@long}"
  end

  # Question 2
  # Write ruby code to return the sum of entries in the
  # list supplied (i.e. apply the `+` operator).
  # Assume each entry implements a `+` method.
  def sum(list)
    @sum = list.reduce(0) { |a, e| a + e }
    puts "#{@sum}"
  end

  # Question 3
  # Write ruby code that returns true if some of the entries
  # in the list of numbers are odd
  def some_odd(numbers)
    @is_odd = numbers.any? { |i| i.odd? ? true : false }
    puts "#{@is_odd}"
  end

  # Question 4
  # Write ruby code that returns true if every entry in the
  # list of numbers are even
  def every_even(numbers)
    @is_even = numbers.all? { |i| i.even? ? true : false }
    puts " #{@is_even}"
  end

  # Question 5
  # Write ruby code that returns an array with all of the
  # entries from the list of words capitalized (i.e. 'foo' becomes 'Foo').
  def transform(words)
    @up_case = words.split(' ').map(&:capitalize).join(' ')
    puts "#{@up_case}"
  end

  # Question 6
  # Write ruby code to read each line from the file
  # named filename. Concatenate the lines together after
  # replacing the trailing newline character with a
  # space and return the result.
  
