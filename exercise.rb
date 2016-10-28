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
    # TODO: Implement this method
    self.calculate_fib_even(nth)
  end

  def self.calculate_fib_even(n, cache={})
    if n <= 1
      return n
    end
    cache[n] ||= 4*(calculate_fib_even(n-1, cache)) + calculate_fib_even(n-1, cache)
    even_sum = 0
    cache.each do |n|
      even_sum += n[0]
    end
    return even_sum
  end
end
