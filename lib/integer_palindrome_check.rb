# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  return false if number.nil?

  number = number.to_s

  start_counter = 0
  end_counter = number.length - 1

  until start_counter >= end_counter
    while number[start_counter] == " "
      start_counter += 1
    end
    while number[end_counter] == " "
      end_counter -= 1
    end
    if number[start_counter] != number[end_counter]
      return false
    end

    start_counter += 1
    end_counter -= 1
  end

  return true
end

print is_palindrome(1001)
