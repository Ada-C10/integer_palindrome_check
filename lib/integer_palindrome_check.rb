
# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)

  return false if number.nil?
  num_array = number.to_s.split('')
  return num_array == reverse_array(num_array)
end

def reverse_array(arr)

  unless arr.nil?
    length = arr.length
    new_arr = arr.clone

    (length/2).times do |i|
      tmp = new_arr[length - i - 1]
      new_arr[length - i - 1] = new_arr[i]
      new_arr[i] = tmp
    end
  end

  return new_arr
end
