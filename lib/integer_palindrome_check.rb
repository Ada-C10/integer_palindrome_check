# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  return false if number.class != Integer
  number = number.to_s
  number_dup = number.dup
  return number == string_reverse(number_dup)
end


def string_reverse(my_string)
  return my_string if my_string.class == NilClass
  i = 0
  j = my_string.length - 1
  n = 0
  while i < j
    n = my_string[i]
    my_string[i] = my_string[j]
    my_string[j] = n
    j -= 1
    i += 1
  end
  return my_string
end
