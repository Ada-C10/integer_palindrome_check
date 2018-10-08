# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.

def is_palindrome(number)
  # return false if it's not an integer
  unless (number.is_a? Integer) && (number >= 0)
    return false
  end

  array = integer_to_array(number)

  i = 0
  j = array.length - 1

  while i <= j
    unless array[i] == array[j]
      return false
    end
    i += 1
    j -= 1
  end

  return true

end

def reverse(array)

  n = array.length
  i = 0
  j = n-i-1

  while i < j do
    memo = array[i]
    array[i] = array[j]
    array[j] = memo
    i = i+1
    j = j-1
  end

  return array
end

def integer_to_array(number)

  i = 1
  array = []
  test_number = number
  array << (test_number%(10**i))/(10**(i-1))
  until number%(10**i) == number
    test_number -= test_number%(10**i)
    i+= 1
    array << (test_number%(10**i))/(10**(i-1))
  end

  return reverse(array)

end
