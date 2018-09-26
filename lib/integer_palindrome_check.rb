# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  if number == nil
    return false
  elsif number < 0
    return false
  end

  reversed_num = []

  while number > 0
    last_dig = number % 10
    number /= 10 #<-- edit the value itself

    reversed_num << last_dig
  end

  length = reversed_num.length
  low_index = 0
  high_index = (length - 1)

  while low_index <= high_index do
    if reversed_num[low_index] != reversed_num[high_index]
      return false
    end

    low_index += 1
    high_index -= 1
  end

  return true #<-- if you survived all that, then congrats you're a palindrome!!!

end
