class Exercise
  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    str.gsub!(/[A-Za-z]+{5,}/) do |word|
      if word == word.capitalize
        word = "Marklar"
      else
        word = "marklar"
      end
    end
    return str
  end



  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    sum = 0
    a, b = 0, 1
    nth.times do
      a, b = b, a + b
      if a % 2 == 0
        sum += a
      end
    end
    return sum
  end
end
