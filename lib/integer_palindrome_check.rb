# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  return false if number == nil
  number = number.to_s
  palindrome_check(number)
end

def palindrome_check(my_phrase)
  return false if my_phrase == nil

  my_phrase = my_phrase.delete(" ")

  index = 0
  half_index = my_phrase.length / 2

    until index == half_index
      if my_phrase[index] != my_phrase[- (index +1)]
        return false
      else
        index += 1
      end
    end

  #single digit
  return true
end
