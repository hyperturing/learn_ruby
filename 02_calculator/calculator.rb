#write your code here

def add(number1, number2)
    number1 + number2
end

def subtract(number1, number2)
    number1 - number2
end

def sum numbers
    # If our array is empty, return 0 rather then nil
    numbers.reduce(:+) or 0
end

def multiply numbers
    # If our array is empty, return 0 rather then nil
    numbers.reduce(:*) or 0
end

def power(number1, number2)
    number1 ** number2
end

def factorial(number)
    # Define our base cases
    if (number == 0)
        return 1
    elsif (number == 1)
        return 1
    else
        return number * factorial(number - 1)
    end
end