# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  return false if number.nil?

  original = number
  reverse = 0

  while number > 0
    last_digit = number % 10
    reverse = reverse * 10 + last_digit
    number = number / 10
  end

  return original == reverse
end

# Time complexity: linear
#  Given a number of n digits, the method has a time complexity of O(n). The number of digits is directly proportionate to the the number of times the loop executes.
# Space complexity: constant
#  No matter the value of n, the method will require the same amount of memory.
