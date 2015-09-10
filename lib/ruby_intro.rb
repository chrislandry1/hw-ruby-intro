# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    return 0 if arr.empty?
    total = 0
    arr.each do |x|
        total += x
    end
    total
end

def max_2_sum arr
  return 0 if arr.empty?
    return arr[0] if arr.length == 1
    arr.sort!
    arr[-1] + arr[-2]
end

def sum_to_n? arr, n
  arr.sort!
  
  return false if arr.empty?
  return false if arr.length == 1
  
  num1 = arr[0]
  num2 = arr[arr.length - 1]

#pseudocode for algorithm from internet  
  while num1 < num2  do
    if num1 + num2 == n
      return true
    elsif num1 + num2 < n
      num1 += 1
    else
      num2 -= 1
    end
  end
  
  return false
   
end
  
  


# Part 2

def hello(name)
  return "Hello, #{name}"
end



def starts_with_consonant? s
  
  # Remove anything other than digits
  #s = s.gsub!(/\D/, "")    
  
  
  if s.start_with?("A", "E", "I", "O", "U","a" ,"e" , "i" , "o", "u")
    return false
  
  elsif s.start_with?("#")
    return false
    
  elsif s.length == 0
    return false
    
  
  else
    return true
  end
  
  
  
  
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  arr = s.chars
  arr.each do |x|
        if x == 0 || x == 1
          return true
        else
          return false
        end
    end
  
  max = s.length
  if s.length > 2
    return true
  else
    return false
  end
  
end
# Part 3

class BookInStock
  
  attr_reader :isbn, :price
  attr_accessor :isbn, :price
  
  
  def initialize isbn,price
    if isbn.empty?
      throw ArgumentError
    end
    if price > 0 
      @isbn=isbn
      @price=Float(price)
    else
      throw ArgumentError
    end
  end
  
  def price_as_string 
      h = price.to_s
      if h.include? "."
      #return "$#{price}" 
        if h.length == 3
          return "$#{price}0"
      
        elsif h.length == 5
          return "$#{price}"
        end
      else
        return "$#{price}.00"
      end
    
    
  end
  
  
end




