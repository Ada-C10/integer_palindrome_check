# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  # raise NotImplementedError
  if number == nil || number < 0
    return false
  elsif
    number >= 0 && number < 10
    return true
  else
    start = 0

    number = number.to_s
    ender = number.length - 1

    while start < ender
      if number[start] == number[ender]
        start += 1
        ender -= 1
      else
        return false
      end
    end
    return true
  end
end
