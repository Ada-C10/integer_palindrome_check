# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  string_number = number.to_s
  if number == nil
    return false
  elsif number < 0
    return false
  elsif string_number.length == 0
    return true
  elsif string_number.length == 1
    return true
  else
    x = find_start_index(string_number, 0)
    y = find_ending_index(string_number, string_number.length - 1)
    start = string_number[x]
    ending = string_number[y]

    until x > y
      if start == ending
        x = find_start_index(string_number, x + 1)
        start = string_number[x]
        y = find_ending_index(string_number, y - 1)
        ending = string_number[y]
      else
        return false
      end
    end
    return true
  end
  # raise NotImplementedError
end

def find_start_index(string_number, index_val)
  new_index = index_val

  if string_number[new_index] == " "
    until string_number[new_index] != " "
      new_index += 1
    end
  end
  return new_index
end

def find_ending_index(string_number, index_val)
  new_index = index_val

  if string_number[new_index] == " "
    until string_number[new_index] != " "
      new_index -= 1
    end
  end
  return new_index
end

test = is_palindrome(13531)
puts "#{test}"
