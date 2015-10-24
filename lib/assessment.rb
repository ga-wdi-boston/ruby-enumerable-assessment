# Ruby enumerable assessment
class Assessment
  # Question 1
  # Write ruby code to return the longest entry in the
  # enumerable supplied.  Assume each entry implements a length
  # method that returns a Fixnum.
  def longest(enum)
    enum.max_by { |x| x.length }.to_i
  end

  # Question 2
  # Write ruby code to return the sum of entries in the
  # enumerable supplied (i.e. apply the `+` operator)
  # Assume each entry implements a `+` method
  def sum(enum)
    enum.reduce(&:+)
  end

  # Question 3
  # Write ruby code that returns true if some of the entries
  # in the numbers enumerable are odd
  def some_odd(numbers)
    numbers.any? { |x| x.odd? }
  end

  # Question 4
  # Write ruby code that returns true if every entry in the
  # numbers enumerable are even
  def every_even(numbers)
    numbers.all? { |x| x.even? }
  end

  # Question 5
  # Write ruby code that returns an array with all of the
  # entries from the words enumerable capitalized.
  def transform(words)
    words.map(&:capitalize)
  end

  # the reason why we can use the &:capitalize after words.map is
  # because it operates the same was as words.map { |w| w.capitalize }

  # Question 6
  # Write ruby code to read each line from the file
  # named filename. Concatenate the lines together after
  # replacing the trailing newline character with a
  # space and return the result.
  def read_file(filename)
    File.open(filename).reduce(' ') { |a, e| a << e.chomp + ' ' }.strip
  end
end

# admittedly I needed some help with this one but here is my understanding:
# We use File.open and then pass it the filename from the perameters
# then use reduce to combine all the elements of the file and then use reduce
# and pass it an initial value of '' and pass the perameters a and e
# we then use the << to append the argument we get from e.chomp and adding
# an empty string to seperate the words
# we end by using strip to remove all trailing and leading whitespace
