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
