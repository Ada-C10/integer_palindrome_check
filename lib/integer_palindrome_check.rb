require 'pry'

# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.


def is_palindrome(number)

  if number == nil
    return false
  end

  i = 0
  number = number.to_s
  length = ((number.to_s).length - 1)

  while i < length
    if number[i] == number[length]
      i = i + 1
      length = length - 1
    else
      return false
    end
  end
  return true
end
