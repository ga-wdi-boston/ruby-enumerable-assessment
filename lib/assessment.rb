# Ruby enumerable assessment
class Assessment
  # Question 1
  # Write ruby code to return the longest entry in the
  # enumerable supplied.  Assume each entry implements a length
  # method that returns a Fixnum.
  def longest(enum)
    a_word = %w(big ass word here)
    a_word.max
    a_word.max { |a, b| a.length <=> b.length }
  end

  # Question 2
  # Write ruby code to return the sum of entries in the
  # enumerable supplied (i.e. apply the `+` operator)
  # Assume each entry implements a `+` method
  def sum(enum)
    (5..20).reduce(:+)
  end

  # Question 3
  # Write ruby code that returns true if some of the entries
  # in the numbers enumerable are odd
  def some_odd(numbers)
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].chunk { |n| n.odd?
      }.each { |odd, array|
        p [odd, array]
      }

  end

  # Question 4
  # Write ruby code that returns true if every entry in the
  # numbers enumerable are even
  def every_even(numbers)
  [1, 2, 3, 4, 5, 6, 7, 8, 9].chunk { |n|
    n.even?
    }.each { |even, arry|
      p [even,arry]
    }

    # Your code goes here
  end

  # Question 5
  # Write ruby code that returns an array with all of the
  # entries from the words enumerable capitalized.
  def transform(words)
    words = words.split(" ").each {|word| word.capitalize!}
    words = words.join(" ")
    return words
  end

  # Question 6
  # Write ruby code to read each line from the file
  # named filename. Concatenate the lines together after
  # replacing the trailing newline character with a
  # space and return the result.
  def read_file(filename)
    File.open("my/file/path", "r").each_line do |line|
  end
end
