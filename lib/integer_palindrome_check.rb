# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.

def num_array_reverse(my_num)
  i = 0
  j = my_num.length - 1

  while i < j
    placeholder = my_num[i]
    my_num[i] = my_num[j]
    my_num[j] = placeholder
    i += 1
    j -= 1
  end
  return my_num
end

def is_palindrome(number)
  return false if number.nil? || number < 0

  int_array_original = []
  int_array_reversed = []
  while number > 0
    digit = number % 10
    number /= 10
    int_array_original << digit
    int_array_reversed << digit
  end

  num_array_reverse(int_array_reversed)

  i = 0
  while i < int_array_original.length
    return false  if int_array_original[i] != int_array_reversed[i]
    i += 1
  end

  return true

end
