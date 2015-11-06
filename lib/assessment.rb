# Ruby enumerable assessment
class Assessment
  # Question 1
  # Write ruby code to return the longest entry in the
  # enumerable supplied.  Assume each entry implements a length
  # method that returns a Fixnum.
  def longest(enum)

    enum.reduce do |memo, entry|
      memo.length > entry.length? memo : entry
    end

    # enum.max do |memo, entry|
    #   memo.length <=> entry.length
    # end

    # enum.max_by do |entry|
    #   entry.length
    # end

    # enum.max_by {|entry| entry.length}

  end


  # Question 2
  # Write ruby code to return the sum of entries in the
  # enumerable supplied (i.e. apply the `+` operator)
  # Assume each entry implements a `+` method
  def sum(enum)

    enum.inject do |memo, entry|
      memo + entry
      +(memo, entry)
    end

    # enum.inject(&:+)

    # enum.inject(:+)

  end


  # Question 3
  # Write ruby code that returns true if some of the entries
  # in the numbers enumerable are odd
  def some_odd(numbers)

    has_odds = false
    numbers.each do |num|
      has_odds = true if num.odd?
    end

    # has_odds
    # numbers.reduce(false) do |any_odds_yet, num|
    #   any_odds_yet || num.odd?
    # end

    # numbers.any? {|num|, num.odd?}

    # numbers.any? &:odd?

    # numbers.any?(:odd?)

  end


  # Question 4
  # Write ruby code that returns true if every entry in the
  # numbers enumerable are even
  def every_even(numbers)

    # !numbers.any?(:odd?)

    # !some_odd(numbers)

    # numbers.all?(:even?)

    # numbers.all? {|num| num.even?}

    numbers.all? do |num|
      num.even?
    end

    # numbers.reduce(true) do |all_even_so_far, num|
    #   all_even_so_far && num.even?
    # end

  end


  # Question 5
  # Write ruby code that returns an array with all of the
  # entries from the words enumerable capitalized.
  def transform(words)

    words.map do |word|
      word.capitalize
    end

    # words.map {|word| word.capitalize}

    # words.map(&:capitalize)

  end


  # Question 6
  # Write ruby code to read each line from the file
  # named filename. Concatenate the lines together after
  # replacing the trailing newline character with a
  # space and return the result.
  def read_file(filename)

    # File.open(filename) do |file|
    #   file.collect_concat do |line|
    #     line.gsub("\n", "\s")
    #   end.rstrip

    #   file.collect_concat{ |line| line.gsub("\n", "\s") }.rstrip

      file.map do |line|
        line.gsub("\g", "\s")
      end.reduce do |memo, line|
        memo + line
      end

  end

end
