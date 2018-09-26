# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  # A method to check if the input string is a palindrome.
  # Return true if the string is a palindrome. Return false otherwise.
    if number == nil || number < 0
      return false
    end

    length = 0
    counter = number

    while counter >= 10
      counter /= 10
      length += 1
    end

    index = 0
    first_index = 0
    last_index = length - 1
    check = true

    check = true
    while index < length

      # palindrome check
      first_digit = number / (10 ** (length-(index)))
      # removes first digit
      number = number - (first_digit * (10 ** (length-index)))
      last_digit = number % (10)
      # removes last digit
      number = number / 10
      if first_digit != last_digit
        check = false
      end
      index += 2
    end
    return check
  end
