# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.

# SOLUTION 1
# One solution would be to approach the integer like the string
# palindrome algorithm, but using divide and modulo to get the first and last
# digits and compare them. If the numbers are equal, you remove them using
# modulo and divide, the repeat the operation. This requires only one
# additional variable, an exponent, to keep track of what power of ten to
# use in the division operations. This has O(n) time complexity: the loop to
# find what power of 10 to start with is O(n), then the loop that follows to
# compare the first and last digits is O(n/2). Since these are sequential
# not nested, the overall time complexity is O(n). Space complexity is O(1)
# since only one additional variable is needed to store the exponent value.

# SOLUTION 2
# Another solution would have been to reconstruct the string in reverse
# order by modulo-ing off the last digit and adding it to a new integer.
# This would require at a minimum two new variables: one to hold
# the reversed integer, and one to hold a copy of the original integer to
# compare it to at the end because we need to deconstruct the integer in
# order to modulo off the last digit with each loop. This has O(n) time
# complexity since you need to loop through each digit, and O(1) space
# complexity.

# SOLUTION 1
def is_palindrome(number)
  return false if number == nil || number < 0
  return true if number == 0 || number < 10

  # find out what power of ten to start division with
  exponent = 1
  while (number / 10 ** exponent) > 9 do
    exponent += 1
  end

  until number == 0
    if (number / 10 ** exponent) == (number % 10)
      number = (number % (10 ** exponent)) / 10 # remove first & last digits
      exponent -= 2 # subtract two for next loop since two digits removed
    else
      return false
    end
  end

  return true
end

# SOLUTION 2
def is_palindrome(number)
  return false if number == nil || number < 0
  return true if number == 0 || number < 10

  number_copy = number
  reverse_number = 0
  while number_copy > 0
    reverse_number *= 10 # multiple by ten before adding ones digit
    reverse_number += (number_copy % 10)
    number_copy /= 10 # remove last digit from number before next modulo
  end

  return reverse_number == number
end
