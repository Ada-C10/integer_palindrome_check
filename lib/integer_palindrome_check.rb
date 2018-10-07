# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def reverse_integer(number)

  num_string = number.to_s

  if num_string == nil
    return number
  end

  i = 0
  j = num_string.length - 1

  while i < j
    temp = num_string[i]
    num_string[i] = num_string[j]
    num_string[j] = temp

    i += 1
    j -= 1
  end
  return num_string.to_i
end

def is_palindrome(number)
  if number == nil
    return false
  end

  if number == reverse_integer(number)
    return true
  else
    return false
  end
end
