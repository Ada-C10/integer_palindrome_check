# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
require 'pry'
def is_palindrome(number)
  return false if number == nil || number < 0
  string_copy = number.to_s
  if string_copy.length == 1
    return true
  else
    i = 0
    j = string_copy.length - 1
    while i < j
      if string_copy[i] == string_copy[j]
        i += 1
        j -= 1
      else
        return false
      end
    end
    return true
  end
end
