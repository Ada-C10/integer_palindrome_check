# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  if number == nil
    return false
  end
  a = number.to_s
  if number < 0
    return false
  end
  y = (a.length - 1)
  x = 0
  until x > y do
    if a[x] != a[y]
      return false
    end
    x += 1
    y -= 1
  end
  return true
end
