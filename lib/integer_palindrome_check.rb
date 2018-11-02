# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
require 'pry'

# 1) We can compare the first digit and the last digit, then we repeat the process.
# 2) For the first digit, we need the order of the number. Say, 12321. Dividing this by 10000 would get us the leading 1. The trailing 1 can be retrieved by taking the mod with 10.
# 3 ) Now, to reduce this to 232.

def is_palindrome(number)

  return false if number == nil
  return true if !number[1]

  divisor = 1
  while ((number / divisor) >= 10)
    divisor *= 10
  end

  while (number != 0)
    first = number / divisor
    last = number % 10
    # If first and last digit
    # not same return false
    if (first != last)
      return false
    end

    # Removing the leading and
    # trailing digit from number
    number = (number % divisor)/10
    # Reducing divisor by a factor
    # of 2 as 2 digits are dropped
    divisor = divisor / 100
  end

  return true

end
