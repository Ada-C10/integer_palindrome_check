# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.


# I originally copied each digit in the number to an array and then iterated through the elements, comparing first to last and so on, giving both a time and space complexity of O(n). Then I realized that I could do the same thing using more math and a handful of iteration variables to do the comparisons in place. This still gives a time complexity O(n) but gives a space complexity of O(1)   :)

def is_palindrome(number)
  if number != nil && number >= 0
    mod = 10
    max = 0
    until number == number % (mod / 10)
      max += 1
      mod *= 10
    end
    mod = 10
    divisor = 1
    max_mod = mod ** max
    max_div = max_mod / 10
    while max_mod > mod do
      comp_digit = (number % max_mod) / max_div
      digit = (number % mod) / divisor
      return false if digit != comp_digit
      mod *= 10
      divisor *= 10
      max_mod /= 10
      max_div /= 10
    end
    return true
  else
    return false
  end
end
