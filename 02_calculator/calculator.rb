#write your code here
def add a, b
  a + b
end

def subtract a, b
  a - b
end

def sum array_of_sums
  sum_of_all = 0
  array_of_sums.each do |x|
    sum_of_all = sum_of_all + x
  end
  sum_of_all
end

def multiply array_to_multiply
  result = array_to_multiply.shift
  array_to_multiply.each do |x|
    result = result * x
  end
  result
end

def power a, b
  result = a
  (b - 1).times do
    result = result * a
  end
  result
end

def factorial a
  result = a
  factor = a
  if a == 0
    result = 1
  else
    (factor -1).times do
      factor = factor -1
      result = result * factor
    end
  end
  result
end 
