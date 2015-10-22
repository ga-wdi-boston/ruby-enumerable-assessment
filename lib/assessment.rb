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
# What enumerable supplied? Is there something we should actually be working off of?
  enum.sum #or use the inject method?
  end

  # Question 3
  # Write ruby code that returns true if some of the entries
  # in the numbers enumerable are odd
  def some_odd(numbers)
    !numbers.any? &block
  end
  print numbers

  # Question 4
  # Write ruby code that returns true if every entry in the
  # numbers enumerable are even
  def every_even(numbers)
    numbers.all? &block
  end
  print numbers

  # Question 5
  # Write ruby code that returns an array with all of the
  # entries from the words enumerable capitalized.
  def transform(words)
    words.capitalized
  end
  print words

  # Question 6
  # Write ruby code to read each line from the file
  # named filename. Concatenate the lines together after
  # replacing the trailing newline character with a
  # space and return the result.
  def read_file(filename)
    file.open("filename.txt") {|f| f.readline}
    filename.gsub(/\n/, ' ') # replaces newline with a space
    print filename
  end
end
