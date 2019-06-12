require 'pry'

# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.

#space complexity O(1) time complexity O(n)
def is_palindrome(number)
  return false if number == nil
  return false if number < 0
  return true if number == 0

  place_values = 0
  remainder = 0
  divisor = 1

  while remainder < number
    divisor *= 10
    remainder = number % divisor
    place_values += 1
  end

  exponent = place_values - 1

  while number > 0
    head = number / 10 ** exponent
    tail = number % 10
    return false if head != tail
    number %= 10 ** exponent
    number /= 10
    exponent -= 2
  end
  return true
end


#space complexity O(n) time complexity O(n)
# def is_palindrome(number)
#   return false if number == nil
#   return false if number < 0
#   return true if number == 0
#
#   place_values = 0
#   remainder = 0
#   divisor = 1
#
#   while remainder < number
#     divisor *= 10
#     remainder = number % divisor
#     place_values += 1
#   end
#
#   i = 0
#   exponent = place_values - 1
#   int_array = Array.new(place_values)
#   while exponent >= 0
#     int_array[i] = number / 10 ** exponent
#     number %= 10 ** exponent
#     exponent -= 1
#     i += 1
#   end
#
#   i = 0
#   j = place_values - 1
#   while i < j
#     return false if int_array[i] != int_array[j]
#     i += 1
#     j -= 1
#   end
#
#   return true
# end
