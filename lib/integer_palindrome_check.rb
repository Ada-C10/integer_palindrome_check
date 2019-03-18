# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  return false if number == nil || number < 0

  reversed_number = number.to_s

  i = 0
  j = reversed_number.length - 1

  while i < j
    char = reversed_number[i]
    reversed_number[i] = reversed_number[j]
    reversed_number[j] = char
    i += 1
    j -= 1
  end

  reversed_number = reversed_number.to_i

  return number == reversed_number

end
