# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  # raise NotImplementedError
  if number == nil || number < 0
    return false
  end

  k = 10

  while number > k
    k *= 10
  end

  k = k / 10

  while k > 1
    left_digit = number / k
    right_digit = number % 10

    if left_digit != right_digit
      return false
    end

    number = number - k * left_digit
    number = (number - right_digit) / 10

    k /= 100
  end
  return true
end
