# Ruby enumerable assessment
class Assessment
  # Question 1
  # Write ruby code to return the longest entry in the
  # enumerable supplied.  Assume each entry implements a length
  # method that returns a Fixnum.
  def longest(enum)
    enum.max { |a, b| a.length <=> b.length }
  end

  # Question 2
  # Write ruby code to return the sum of entries in the
  # enumerable supplied
  #(i.e. apply the `+` operator)
  # Assume each entry implements a `+` method
  def sum(enum)
    enum.reduce { |memo, el| memo + el } # .reduce combines all elements of enum and applies a binary operator
  end
  # source used http://ruby-doc.org/core-2.2.3/Enumerable.html#method-i-reduce

  # Question 3
  # Write ruby code that returns true if some of the entries
  # in the numbers enumerable are odd
  def some_odd(numbers)
    numbers.any (&:odd?) # .any will return true if min 1 of the elents is true.
  end
  # source used http://apidock.com/ruby/Enumerable/any%3F

  # Question 4
  # Write ruby code that returns true if every entry in the
  # numbers enumerable are even
  def every_even(numbers)
    numbers.all? { |numbers| numbers } # .all? method will be true if the block does not return any falses.
  end
  # source used http://ruby-doc.org/core-2.2.3/Enumerable.html

  # Question 5
  # Write ruby code that returns an array with all of the
  # entries from the words enumerable capitalized.
  def transform(words)
    array = ['a', 'b', 'c']
    array.map!(&:upcase) #.map! returns an array with the method we pass through the ( )
  end

  # source used http://www.brianstorti.com/understanding-ruby-idiom-map-with-symbol/

  # Question 6
  # Write ruby code to read each line from the file
  # named filename. Concatenate the lines together after
  # replacing the trailing newline character with a
  # space and return the result.
  def read_file(filename)
    File.open(filename).each do |line memo|
      memo << line.chomp + ''
    end
  end
end
