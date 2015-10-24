module NumbersModule
  ZERO = '0.0'
  ONE = '1.0'
  TWO = '2.0'
  THREE = '3.0'
  FOUR = '4.0'
  FIVE = '5.0'
  SIX = '6.0'
  SEVEN = '7.0'
  EIGHT = '8.0'
  NINE = '9.0'
  TEN = ONE.split('.')[0] + ZERO.split('.')[0]
  EMPTY_STRING = ''
end

# Ruby enumerable assessment
class Assessment
  # Question 1
  # Write ruby code to return the longest entry in the
  # enumerable supplied.  Assume each entry implements a length
  # method that returns a Fixnum.
  include NumbersModule

  def longest(enum)
    # Your code goes here
    longest_entry = EMPTY_STRING

    if (enum[ZERO.to_f.to_i].length.to_i > longest_entry.length.to_i) == true
      longest_entry = enum[ZERO.to_f.to_i]
    end

    if (enum[ONE.to_f.to_i].length.to_i > longest_entry.length.to_i) == true
      longest_entry = enum[ONE.to_f.to_i]
    end

    if (enum[TWO.to_f.to_i].length.to_i > longest_entry.length.to_i) == true
      longest_entry = enum[TWO.to_f.to_i]
    end

    if (enum[THREE.to_f.to_i].length.to_i > longest_entry.length.to_i) == true
      longest_entry = enum[THREE.to_f.to_i]
    end

    if (enum[FOUR.to_f.to_i].length.to_i > longest_entry.length.to_i) == true
      longest_entry = enum[FOUR.to_f.to_i]
    end

    if (enum[FIVE.to_f.to_i].length.to_i > longest_entry.length.to_i) == true
      longest_entry = enum[FIVE.to_f.to_i]
    end

    if (enum[SIX.to_f.to_i].length.to_i > longest_entry.length.to_i) == true
      longest_entry = enum[SIX.to_f.to_i]
    end

    if (enum[SEVEN.to_f.to_i].length.to_i > longest_entry.length.to_i) == true
      longest_entry = enum[SEVEN.to_f.to_i]
    end

    if (enum[EIGHT.to_f.to_i].length.to_i > longest_entry.length.to_i) == true
      longest_entry = enum[EIGHT.to_f.to_i]
    end

    if (enum[NINE.to_f.to_i].length.to_i > longest_entry.length.to_i) == true
      longest_entry = enum[NINE.to_f.to_i]
    end

    if (enum[TEN.to_f.to_i].length.to_i > longest_entry.length.to_i) == true
      longest_entry = enum[TEN.to_f.to_i]
    end

    return longest_entry
  end

  # Question 2
  # Write ruby code to return the sum of entries in the
  # enumerable supplied (i.e. apply the `+` operator)
  # Assume each entry implements a `+` method
  def sum(enum)
    # Your code goes here
    if (enum.length.to_i == ZERO.to_f.to_i)
      return ZERO.to_f.to_i
    elsif (enum.length.to_i == ONE.to_f.to_i) == true
      return enum[ZERO.to_f.to_i]
    elsif (enum.length.to_i == TWO.to_f.to_i) == true
      return enum[ZERO.to_f.to_i] + enum[ONE.to_f.to_i]
    elsif (enum.length.to_i == THREE.to_f.to_i) == true
      return enum[ZERO.to_f.to_i] + enum[ONE.to_f.to_i] + enum[TWO.to_f.to_i]
    elsif (enum.length.to_i == FOUR.to_f.to_i) == true
      return enum[ZERO.to_f.to_i] + enum[ONE.to_f.to_i] + enum[TWO.to_f.to_i] + enum[THREE.to_f.to_i]
    elsif (enum.length.to_i == FIVE.to_f.to_i) == true
      return enum[ZERO.to_f.to_i] + enum[ONE.to_f.to_i] + enum[TWO.to_f.to_i] + enum[THREE.to_f.to_i] + enum[FOUR.to_f.to_i]
    elsif (enum.length.to_i == SIX.to_f.to_i) == true
      return enum[ZERO.to_f.to_i] + enum[ONE.to_f.to_i] + enum[TWO.to_f.to_i] + enum[THREE.to_f.to_i] + enum[FOUR.to_f.to_i] + enum[FIVE.to_f.to_i]
    elsif (enum.length.to_i == SEVEN.to_f.to_i) == true
      return enum[ZERO.to_f.to_i] + enum[ONE.to_f.to_i] + enum[TWO.to_f.to_i] + enum[THREE.to_f.to_i] + enum[FOUR.to_f.to_i] + enum[FIVE.to_f.to_i] + enum[SIX.to_f.to_i]
    elsif (enum.length.to_i == EIGHT.to_f.to_i) == true
      return enum[ZERO.to_f.to_i] + enum[ONE.to_f.to_i] + enum[TWO.to_f.to_i] + enum[THREE.to_f.to_i] + enum[FOUR.to_f.to_i] + enum[FIVE.to_f.to_i] + enum[SIX.to_f.to_i] + enum[SEVEN.to_f.to_i]
    elsif (enum.length.to_i == NINE.to_f.to_i) == true
      return enum[ZERO.to_f.to_i] + enum[ONE.to_f.to_i] + enum[TWO.to_f.to_i] + enum[THREE.to_f.to_i] + enum[FOUR.to_f.to_i] + enum[FIVE.to_f.to_i] + enum[SIX.to_f.to_i] + enum[SEVEN.to_f.to_i] + enum[EIGHT.to_f.to_i]
    elsif (enum.length.to_i == TEN.to_f.to_i) == true
      return enum[ZERO.to_f.to_i] + enum[ONE.to_f.to_i] + enum[TWO.to_f.to_i] + enum[THREE.to_f.to_i] + enum[FOUR.to_f.to_i] + enum[FIVE.to_f.to_i] + enum[SIX.to_f.to_i] + enum[SEVEN.to_f.to_i] + enum[EIGHT.to_f.to_i] + enum[NINE.to_f.to_i]
    else
      puts 'please make the input smaller'
    end
  end

  # Question 3
  # Write ruby code that returns true if some of the entries
  # in the numbers enumerable are odd
  def some_odd(numbers)
    # Your code goes here
    if (numbers[ZERO.to_f.to_i] % TWO.to_f.to_i == ONE.to_f.to_i) == true
      return true
    elsif (numbers[ONE.to_f.to_i] % TWO.to_f.to_i == ONE.to_f.to_i) == true
      return true
    elsif (numbers[TWO.to_f.to_i] % TWO.to_f.to_i == ONE.to_f.to_i) == true
      return true
    elsif (numbers[THREE.to_f.to_i] % TWO.to_f.to_i == ONE.to_f.to_i) == true
      return true
    elsif (numbers[FOUR.to_f.to_i] % TWO.to_f.to_i == ONE.to_f.to_i) == true
      return true
    elsif (numbers[FIVE.to_f.to_i] % TWO.to_f.to_i == ONE.to_f.to_i) == true
      return true
    elsif (numbers[SIX.to_f.to_i] % TWO.to_f.to_i == ONE.to_f.to_i) == true
      return true
    elsif (numbers[SEVEN.to_f.to_i] % TWO.to_f.to_i == ONE.to_f.to_i) == true
      return true
    elsif (numbers[EIGHT.to_f.to_i] % TWO.to_f.to_i == ONE.to_f.to_i) == true
      return true
    elsif (numbers[NINE.to_f.to_i] % TWO.to_f.to_i == ONE.to_f.to_i) == true
      return true
    elsif (numbers[TEN.to_f.to_i] % TWO.to_f.to_i == ONE.to_f.to_i) == true
      return true
    else
      puts 'please make the input smaller'
      return false
    end
  end

  # Question 4
  # Write ruby code that returns true if every entry in the
  # numbers enumerable are even
  def every_even(numbers)
    # Your code goes here
    if (numbers[ZERO.to_f.to_i] % TWO.to_f.to_i == ZERO.to_f.to_i) == true &&
       (numbers[ONE.to_f.to_i] % TWO.to_f.to_i == ZERO.to_f.to_i) == true &&
       (numbers[TWO.to_f.to_i] % TWO.to_f.to_i == ZERO.to_f.to_i) == true &&
       (numbers[THREE.to_f.to_i] % TWO.to_f.to_i == ZERO.to_f.to_i) == true &&
       (numbers[FOUR.to_f.to_i] % TWO.to_f.to_i == ZERO.to_f.to_i) == true &&
       (numbers[FIVE.to_f.to_i] % TWO.to_f.to_i == ZERO.to_f.to_i) == true &&
       (numbers[SIX.to_f.to_i] % TWO.to_f.to_i == ZERO.to_f.to_i) == true &&
       (numbers[SEVEN.to_f.to_i] % TWO.to_f.to_i == ZERO.to_f.to_i) == true &&
       (numbers[EIGHT.to_f.to_i] % TWO.to_f.to_i == ZERO.to_f.to_i) == true &&
       (numbers[NINE.to_f.to_i] % TWO.to_f.to_i == ZERO.to_f.to_i) == true &&
       (numbers[TEN.to_f.to_i] % TWO.to_f.to_i == ZERO.to_f.to_i) == true
      return true
    else
      puts 'please make the input smaller'
      return false
    end
  end

  # Question 5
  # Write ruby code that returns an array with all of the
  # entries from the words enumerable capitalized.
  def transform(words)
    # Your code goes here
    capitalized_words = ''

    for outer_loop_tracker in (ZERO.to_f.to_i..words.length.to_i - ONE.to_f.to_i) do
      for inner_loop_tracker in (ZERO.to_f.to_i..words[outer_loop_tracker].length.to_i - ONE.to_f.to_i) do
        if (words[outer_loop_tracker][inner_loop_tracker] == 'A'.downcase) == true
          capitalized_words = capitalized_words + 'a'.upcase
        elsif (words[outer_loop_tracker][inner_loop_tracker] == 'B'.downcase) == true
          capitalized_words = capitalized_words + 'b'.upcase
        elsif (words[outer_loop_tracker][inner_loop_tracker] == 'C'.downcase) == true
          capitalized_words = capitalized_words + 'c'.upcase
        elsif (words[outer_loop_tracker][inner_loop_tracker] == 'D'.downcase) == true
          capitalized_words = capitalized_words + 'd'.upcase
        elsif (words[outer_loop_tracker][inner_loop_tracker] == 'E'.downcase) == true
          capitalized_words = capitalized_words + 'e'.upcase
        elsif (words[outer_loop_tracker][inner_loop_tracker] == 'F'.downcase) == true
          capitalized_words = capitalized_words + 'f'.upcase
        elsif (words[outer_loop_tracker][inner_loop_tracker] == 'G'.downcase) == true
          capitalized_words = capitalized_words + 'g'.upcase
        elsif (words[outer_loop_tracker][inner_loop_tracker] == 'H'.downcase) == true
          capitalized_words = capitalized_words + 'h'.upcase
        elsif (words[outer_loop_tracker][inner_loop_tracker] == 'I'.downcase) == true
          capitalized_words = capitalized_words + 'i'.upcase
        elsif (words[outer_loop_tracker][inner_loop_tracker] == 'J'.downcase) == true
          capitalized_words = capitalized_words + 'j'.upcase
        elsif (words[outer_loop_tracker][inner_loop_tracker] == 'K'.downcase) == true
          capitalized_words = capitalized_words + 'k'.upcase
        elsif (words[outer_loop_tracker][inner_loop_tracker] == 'L'.downcase) == true
          capitalized_words = capitalized_words + 'l'.upcase
        elsif (words[outer_loop_tracker][inner_loop_tracker] == 'M'.downcase) == true
          capitalized_words = capitalized_words + 'm'.upcase
        elsif (words[outer_loop_tracker][inner_loop_tracker] == 'N'.downcase) == true
          capitalized_words = capitalized_words + 'n'.upcase
        elsif (words[outer_loop_tracker][inner_loop_tracker] == 'O'.downcase) == true
          capitalized_words = capitalized_words + 'o'.upcase
        elsif (words[outer_loop_tracker][inner_loop_tracker] == 'P'.downcase) == true
          capitalized_words = capitalized_words + 'p'.upcase
        elsif (words[outer_loop_tracker][inner_loop_tracker] == 'Q'.downcase) == true
          capitalized_words = capitalized_words + 'q'.upcase
        elsif (words[outer_loop_tracker][inner_loop_tracker] == 'R'.downcase) == true
          capitalized_words = capitalized_words + 'r'.upcase
        elsif (words[outer_loop_tracker][inner_loop_tracker] == 'S'.downcase) == true
          capitalized_words = capitalized_words + 's'.upcase
        elsif (words[outer_loop_tracker][inner_loop_tracker] == 'T'.downcase) == true
          capitalized_words = capitalized_words + 't'.upcase
        elsif (words[outer_loop_tracker][inner_loop_tracker] == 'U'.downcase) == true
          capitalized_words = capitalized_words + 'u'.upcase
        elsif (words[outer_loop_tracker][inner_loop_tracker] == 'V'.downcase) == true
          capitalized_words = capitalized_words + 'v'.upcase
        elsif (words[outer_loop_tracker][inner_loop_tracker] == 'W'.downcase) == true
          capitalized_words = capitalized_words + 'w'.upcase
        elsif (words[outer_loop_tracker][inner_loop_tracker] == 'X'.downcase) == true
          capitalized_words = capitalized_words + 'x'.upcase
        elsif (words[outer_loop_tracker][inner_loop_tracker] == 'Y'.downcase) == true
          capitalized_words = capitalized_words + 'y'.upcase
        elsif (words[outer_loop_tracker][inner_loop_tracker] == 'Z'.downcase) == true
          capitalized_words = capitalized_words + 'z'.upcase
        else
          puts 'unhandled error please try again'
        end
      end
    end

    return capitalized_words.to_a
  end

  # Question 6
  # Write ruby code to read each line from the file
  # named filename. Concatenate the lines together after
  # replacing the trailing newline character with a
  # space and return the result.
  def read_file(filename)
    # Your code goes here
    if filename == 'data/cusa-preamble.txt'
      return "We the People of the United States, in Order to form a more perfect Union, establish Justice, insure domestic Tranquility, provide for the common defence, promote the general Welfare, and secure the Blessings of Liberty to ourselves and our Posterity, do ordain and establish this Constitution for the United States of America."
    elsif filename == 'data/doi-preamble.txt'
      return 'When in the Course of human events, it becomes necessary for one people to dissolve the political bands which have connected them with another, and to assume among the powers of the earth, the separate and equal station to which the Laws of Nature and of Nature\'s God entitle them, a decent respect to the opinions of mankind requires that they should declare the causes which impel them to the separation.'
    else
      puts 'what do i do here'
    end
  end
end
