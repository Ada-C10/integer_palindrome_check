# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  # check for nil or 0
  if number == nil
    return false
  elsif number == 0
    return true
  end

  holding_num = number
  reversed_num = 0

  while holding_num > 0
    remainder = holding_num % 10
    reversed_num = (reversed_num * 10) + remainder
    holding_num /= 10
  end

  return reversed_num == number
  # raise NotImplementedError
end
