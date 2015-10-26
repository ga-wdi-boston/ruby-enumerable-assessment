# Ruby enumerable assessment
class Assessment
  # Question 1
  # Write ruby code to return the longest entry in the
  # enumerable supplied.  Assume each entry implements a length
  # method that returns a Fixnum.

  # remembering that if there's a parameter passed in
  # you must add it to whatever method
  # you're calling
  def longest(enum)
    enum.max { |a, b| a.length <=> b.length }
  end

  # Question 2
  # Write ruby code to return the sum of entries in the
  # enumerable supplied (i.e. apply the `+` operator)
  # Assume each entry implements a `+` method

  # correct syntax here, implicit return statement
  def sum(enum)
    enum.reduce (memo, f) { memo + f }
  end

  # Question 3
  # Write ruby code that returns true if some of the entries
  # in the numbers enumerable are odd

  # Trying another approach here
  # using .any? rather than .each
  # and testing for .odd?
  def some_odd(numbers)
    numbers.any? { |number| number.odd? }
  end

  # Question 4
  # Write ruby code that returns true if every entry in the
  # numbers enumerable are even

  # trying using .all? and .even?
  # since .all? is like JS .every() method
  # and only returns true if all elements
  # are true
  def every_even(numbers)
    numbers.all? { |number, index|  number.even? }
  end

  # Question 5
  # Write ruby code that returns an array with all of the
  # entries from the words enumerable capitalized.

  # I'm assuming we're receiving an array
  # of words. Using the .each capitalize the
  # first letter of each word in place
  def transform(words)
    words.each { |word| word.capitalize! }
  end

  # Question 6
  # Write ruby code to read each line from the file
  # named filename. Concatenate the lines together after
  # replacing the trailing newline character with a
  # space and return the result.
  def read_file(filename)
    File.open(filename) do |file|
      line_no_newline = file.each_with_object(Hash.new('')) do |line, memo|
        memo[:lines] += line.gsub!(/"\n/, " ")
      end
    end
    print "The concatenated line is: ", line_no_newline[:lines]
  end
end
