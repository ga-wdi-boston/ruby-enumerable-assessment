# Ruby enumerable diagnostic
class Diagnostic
  # Question 1
  # Write ruby code to return the longest entry in the list supplied.
  # Assume each entry in the list implements a length method that returns
  # a Fixnum.
  def longest(list)
    ar = ['one','two','three','four','five']
      ar.max_by(&:length) # => "three"
  end

  Clarity:2
  Comfort:2

  Googled answer

  # Question 2
  # Write ruby code to return the sum of entries in the
  # list supplied (i.e. apply the `+` operator).
  # Assume each entry implements a `+` method.
  def sum(list)
    [1, 2, 3].inject(0) {|sum, i|  sum + i }

  end

  Clarity:3
  Comfort:3

  Googled answer

  # Question 3
  # Write ruby code that returns true if some of the entries
  # in the list of numbers are odd
  def some_odd(numbers)
    100.times do |i|
    next if i % 2 != 0
    puts i
    end
  end

  Clarity:3
  Comfort:3

  Googled answer

  # Question 4
  # Write ruby code that returns true if every entry in the
  # list of numbers are even
  def every_even(numbers)
    100.times do |i|
    next if i % 2 == 0
    puts i
    end
  end

  Clarity:3
  Comfort:3

  Googled answer

  # Question 5
  # Write ruby code that returns an array with all of the
  # entries from the list of words capitalized (i.e. 'foo' becomes 'Foo').
  def transform(words)
    manufacturer.MFA_BRAND.first.upcase
    #ALFA ROMEO => Alfa Romeo
    #AUDI => Audi
    #BMW => Bmw
  end

  Clarity:2
  Comfort:3

  Googled answer

  # Question 6
  # Write ruby code to read each line from the file
  # named filename. Concatenate the lines together after
  # replacing the trailing newline character with a
  # space and return the result.
  def read_file(filename)
    [filename].concat do
      puts.line + " "
    end
  end

  Clarity:0
  Comfort:0

  Googled answer but could not find
end
