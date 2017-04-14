# frozen_string_literal: true

# Ruby enumerable diagnostic
class Diagnostic
  # Question 1
  # Write ruby code to return the longest entry in the list supplied.
  # Assume each entry in the list implements a length method that returns
  # a Fixnum.
  def longest(list)

  include Comparable

    def <=>(list)
      [RANKS.index(rank), SUITS.index(suit)] <=>
        [RANKS.index(other.rank), SUITS.index(other.suit)]


  #   include Enumerable
  #
  #   def each
  #     @list = list
  #     current_list_item = 0
  #
  #     while current_list_item < list.length
  #
  #       if current_list_item[i] < current_list_item[i+1]
  #         yield current_list_item
  #         current_list_item += 1
  #       end
  #     end
  # end

  # Question 2
  # Write ruby code to return the sum of entries in the
  # list supplied (i.e. apply the `+` operator).
  # Assume each entry implements a `+` method.
  def sum(list)
    list.reduce(:+)
  end

  # Question 3
  # Write ruby code that returns true if some of the entries
  # in the list of numbers are odd
  def some_odd(numbers)
    numbers.any? {|num| num.even}
  end

  # Question 4
  # Write ruby code that returns true if every entry in the
  # list of numbers are even
  def every_even(numbers)
    numbers_set
    numbers_set.each { |numbers_set, i|
      numbers % 2 == 0
    }
  end

  # Question 5
  # Write ruby code that returns an array with all of the
  # entries from the list of words capitalized (i.e. 'foo' becomes 'Foo').
  def transform(words)
    # Your code goes here
  end

  # Question 6 (optional)
  # Change `xit` to `it` in `diagnostic_spec.rb` to test this method
  # Write ruby code to read each line from the file
  # named filename. Concatenate the lines together after
  # replacing the trailing newline character with a
  # space and return the result.
  # ran out of time#
  def read_file(filename)
    raise 'Usage: ruby bin/filename.rb <input_file>' if ARGV.empty?

    input_file = ARGV[0]

    File.open(input_file) do |file|
      file.each_with_index do |line, i|
        "#{i}: #{line}"

      end
    end
      end
    end
