# Ruby enumerable assessment
class Assessment
  # Question 1
  # Write ruby code to return the longest entry in the
  # enumerable supplied.  Assume each entry implements a length
  # method that returns a Fixnum.
  def longest(enum)
    enum.max { |a, b| a.length <=> b.length}
  end

  # Question 2
  # Write ruby code to return the sum of entries in the
  # enumerable supplied (i.e. apply the `+` operator)
  # Assume each entry implements a `+` method
  def sum(enum)
    # Your code goes here
    # enum.reduce { |memo, index| memo + index}
    enum.reduce(&:+)
end
  # Question 3
  # Write ruby code that returns true if some of the entries
  # in the numbers enumerable are odd
  def some_odd(numbers)
    # numbers.any? {|index| index.odd?}
    numbers.any?(&:odd?)
  end

  # Question 4
  # Write ruby code that returns true if every entry in the
  # numbers enumerable are even
  def every_even(numbers)
    # Your code goes here
    # numbers.all? { |index| index.even?}
    numbers.all?(&:even?)
  end

  # Question 5
  # Write ruby code that returns an array with all of the
  # entries from the words enumerable capitalized.
  def transform(words)
    # Your code goes here
    words.map(&:capitalize)
  end

  # Question 6
  # Write ruby code to read each line from the file
  # named filename. Concatenate the lines together after
  # replacing the trailing newline character with a
  # space and return the result.
  def read_file(filename)
    # Your code goes here
    new_lines = File.open(filename).each_with_object('') do |lines, el|
      el << lines.chomp! + ' '
    end
    new_lines.strip
  end
end
