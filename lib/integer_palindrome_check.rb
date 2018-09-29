# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)

  if number == nil || number < 0
    return false
  end

  if number < 10
    return true
  end

  copy = number
  reverse_num = 0

  while copy != 0
    reverse_num = (copy % 10) + (reverse_num * 10)
    copy /= 10
    if reverse_num == copy
      return true
    end
  end

  return number - reverse_num == 0

end
