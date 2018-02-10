# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  s = 0
  arr.each { |a| s +=a }
  return s
end

def max_2_sum arr
  sorted = arr.sort
  last_2 = sorted.last(2)
  if last_2.count == 2 
    s = last_2[0] + last_2[1]
  elsif last_2.count == 1
    s = last_2[0]
  else
    s = 0
  end 
  return s
end

def sum_to_n? arr, n
  if arr.count < 2
    return false
  end
  arr.each do |a|
    arr2 = arr
    arr2.delete_at(arr2.find_index(a))
    arr2.each do |b|
      s = a + b
      if s == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if /^[^aeiou\W]/i.match(s) == nil
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  if s.chars.count < 1
    return false
  end
  s.each_char do |x| 
    if x !~ /[01]/
      return false
    end
  end
  back = s.chars.last(2) 
  back.each do |x|
    if x !~ /[0]/
      return false
    end
  end
  return true
end

# Part 3

class BookInStock
  def initialize(_isbn, _price)
    if _isbn.chars.count < 1
      raise ArgumentError.new("Must be at least 1 character long")
    end
    if _price <= 0
      raise ArgumentError.new("Price must be greater than 0")
    end
    @isbn = _isbn
    @price = _price
  end
  attr_accessor :price, :isbn
  
  def price_as_string
    s = "$" + "%.2f" % price
    return s
  end

end
