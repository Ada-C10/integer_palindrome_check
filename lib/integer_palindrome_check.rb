# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  # raise NotImplementedError
  return false if number == nil || number < 0 

  num_to_string = number.to_s

  i = 0
  j = num_to_string.length - 1

  while i < j
    return false unless num_to_string[i] == num_to_string[j]
    i += 1
    j -= 1
  end
  reversed_number = num_to_string.to_i
  return true if number == reversed_number
end
