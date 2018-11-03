# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  return false if number == nil || number < 0
  n = number
  reverse = 0
  
  while n > 0
    last_number = n % 10
    reverse = reverse * 10 + last_number
    n /= 10
  end
  return reverse == number ? true : false
end
