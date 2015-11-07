# Ruby enumerable assessment
class Assessment
  # Question 1
  # Write ruby code to return the longest entry in the
  # enumerable supplied.  Assume each entry implements a length
  # method that returns a Fixnum.
  def longest(enum)
    enum.max { |a, b| a.length <=> b.length}
    enum.reduce do |memo, entry|
      enum.max_by {|entry| entry.length}

  end

  # Question 2
  # Write ruby code to return the sum of entries in the
  # enumerable supplied (i.e. apply the `+` operator)
  # Assume each entry implements a `+` method
  def sum(enum)
  enum.inject(&:+) # this is an operation called symbol to proc
  enum.inject(:+) # call the '+' method on each element and memo

  end

  # Question 3
  # Write ruby code that returns true if some of the entries
  # in the numbers enumerable are odd #Step through a collection and see if it has odds.
  def some_odd(numbers)
  has_odds = false
  enum.each do |num|
    has_odds = true if num.odd
  end
  has_odds
  ##
  numbers.reduce(false){ |any_odds_yet, num| any_odds_yet || num.odd? }
  ##
  numbers.any? { |num| num.odd? }
  numbers.any? &:odd?
  numbers.any(:odd?)
  end
  ##
  !numbers.any(:odd?)
  end
  ##
  !some_odd(numbers)
  end
  ##
  # Question 4
  # Write ruby code that returns true if every entry in the
  # numbers enumerable are even
  def every_even(numbers)
      #If any numbers are not odd, then they are even
      numbers.all? {|num| num.even?} #check all the numbers and given each of the given nums, is the number even?
    # Your code goes here
  end

  # Question 5
  # Write ruby code that returns an array with all of the
  # entries from the words enumerable capitalized.
  def transform(words)
    words.map do |word|
      word.capitalize
    end

    ##
    words.map {}

  # Question 6
  # Write ruby code to read each line from the file
  # named filename. Concatenate the lines together after
  # replacing the trailing newline character with a
  # space and return the result.
  def read_file(filename)
    File.open(filename) do |file|
      ## ORRRRR
      file.collect_concat{ |line| line.gsub("\n", "\s")}.rstrip
      #### OR
      file.map do |line|
        line.gsub("\n", "\s")
      end.reduce do |memo, line| # or .reduce(&:+)
        memo + line
    end
end
