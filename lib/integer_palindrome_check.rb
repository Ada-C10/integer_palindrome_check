# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)

  return false if number == nil

  temp = number
  reverse = 0

  while temp > 0
    last_digit = temp % 10
    reverse = reverse * 10 + last_digit
    temp /=  10
  end

  return reverse == number ? true : false


  raise NotImplementedError
end


# Time complexity is O(n) where n is the input (number).

# Space complexity is O(1), since the strorage of the variables remain the same even if the number increases. 
