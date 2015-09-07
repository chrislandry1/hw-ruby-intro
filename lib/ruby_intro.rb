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
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
