# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
require 'pry'
def is_palindrome(number)
  return false if number == nil || number < 0
  return true if number == 0

  reversed_num = 0
  duplicate = number

  while duplicate > 0
    reversed_num *= 10
    last_num = duplicate % 10
    reversed_num += last_num
    duplicate -= last_num
    duplicate /= 10
  end

  if number == reversed_num
    return true
  else
    return false
  end
end

# 1234321
