def add(a, b)
    return a + b
end

def subtract(a, b)
    return a - b
end

def sum(numbers)
    return numbers.sum
end

def multiply(a, b)
    result = a * b
    return result
end

def power(a, b)
    result = a ** b
    return result
end

def factorial(n)
    return 1 if n == 0 || n == 1
    return n * factorial(n - 1)
end