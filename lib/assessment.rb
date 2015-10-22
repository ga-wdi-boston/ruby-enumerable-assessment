# Ruby enumerable assessment
class Assessment
  # Question 1
  # Write ruby code to return the longest entry in the
  # enumerable supplied.  Assume each entry implements a length
  # method that returns a Fixnum.
  def longest(enum)
    enum.max {|a, b| a.length <=> b.length}
    end
  end

  puts longest

  # Question 2
  # Write ruby code to return the sum of entries in the
  # enumerable supplied (i.e. apply the `+` operator)
  # Assume each entry implements a `+` method
  def sum(enum)
    enum.reduce{|a, b| a + b}
    end
  end

  puts sum

  # Question 3
  # Write ruby code that returns true if some of the entries
  # in the numbers enumerable are odd
  def some_odd(numbers)
    numbers.any? {|number| number%2 == 1}
    end
  end

  puts some_odd

  # Question 4
  # Write ruby code that returns true if every entry in the
  # numbers enumerable are even
  def every_even(numbers)
    numbers.all? {|number| number%2 == 0}
    end
  end



  # Question 5
  # Write ruby code that returns an array with all of the
  # entries from the words enumerable capitalized.

  #help
  def transform(words)
    memo = 0
    upcase.map {|memo, word| memo + word
    end
  end

  # Question 6
  # Write ruby code to read each line from the file
  # named filename. Concatenate the lines together after
  # replacing the trailing newline character with a
  # space and return the result.
  def read_file(filename)
    #I don't really understand the ARGV[0], just took from read-file.rb demo yesterday, and I don't know when to use it/if I need it here.
    File.open(ARGV[0]) do |filename|
      filename.reduce(&:+)
      filename.gsub(/\n/, ' ')
    end
  end
end


#I used primarily my code from the code-alongs yesterday and the day before, as well as a bit of the Ruby-Doc documentation for "enumerator" to complete this assessment.
