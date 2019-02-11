# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # inject will take the values of the array and using :+ expression
  # will connect them together
  arr.inject(0, :+)
end

def max_2_sum arr
  
  return 0 if arr.empty?
  arr.sort().last(2).reduce(:+)
end

def sum_to_n? arr, n
  
  return false if arr.empty?
  hash = Hash.new(0)
  arr.each do |val|
    if hash.key? val
      return true
    else
      hash[n-val] = val
    end # end else statement
   end # end if statement  
   
   return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
  
end

def starts_with_consonant? s
    # Checks string value and if it contains any consonant values
  !!(s[0] =~ /[bcdfghjklmnpqrstvwexyz]+/i)

end

def binary_multiple_of_4? s
  if s =~ /^[0-1]+$/
    return s.to_i(2) % 4 == 0
  end # end if
  false
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize isbn, price
    
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end # End def
  
  def price_as_string
    
    format("$%.2f", @price)
  end # end def 
end

