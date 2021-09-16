# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr_sum = 0
  arr.each{|i| arr_sum += i}
  return arr_sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    arr_temp = arr.sort{|a,b| b <=> a}
    return arr_temp[0] + arr_temp[1]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length == 0 or arr.length == 1
    return false
  end
  (0..arr.length-1).any? do |i| 
    arr[i+1..arr.length].any? { |x| x + arr[i] == n }
  end 
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty?
    return false
  end
  first_letter = (s.upcase)[0]
  if !(first_letter.ord.between?(65,90))
    return false
  end
  if ['A', 'E', 'I', 'O', 'U'].include? first_letter
    return false
  end
  return true
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.count('10') != s.size
    return false
  end
  if s[s.size - 1] == '0' and s[s.size - 2] == '0'
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn,price)
    @isbn = isbn
    @price = price
    if isbn.length == 0 or price <= 0
      raise ArgumentError
    end
  end
  attr_accessor :isbn
  attr_accessor :price
  def price_as_string()
    return "$" + ('%.02f' % price).to_s
  end
end
