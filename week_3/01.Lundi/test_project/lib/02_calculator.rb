def add(n1, n2)
  return n1 + n2
end

def subtract(n1, n2)
  return n1 - n2
end

def sum(arr)
  arr.inject(0) { |arr, i| arr + i }
end

def multiply(n1, n2)
  return n1 * n2
end

def power(n1, n2)
  return n1 ** n2
end

def factorial(nb)
  i = 1
  fact = 1
  while i <= nb
    fact *= i
    i += 1
  end
  return fact
end
