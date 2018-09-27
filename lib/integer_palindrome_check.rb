# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  if number.nil? || number < 0
    return false
  end

  if number / 10 < 1
    return true
  end

  l = number.to_s.length
  i = 0

  while i < l / 2

    if number / ( 10 ** (l - i - 1)) % 10 != number % ( 10 ** (i + 1)) / (10 ** i)
      return false
    end

    i += 1
  end
  return true

end
