# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  return false if number == nil || number < 0

  n = number
  reverse = 0
  while n > 0
    # grab the last number
    last_digit = n % 10
    reverse = reverse * 10 + last_digit
    n /=  10
  end
  # if the reverse of the number is the same as the number, true
  return reverse == number ? true : false

end
