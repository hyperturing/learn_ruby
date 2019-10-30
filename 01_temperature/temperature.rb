#write your code here

def ftoc celsius_temperature
    fahrenheit_temperature = (celsius_temperature - 32.0) * (5.0 / 9.0)
end

def ctof fahrenheit_temperature
    celsius_temperature = fahrenheit_temperature * (9.0 / 5.0) + 32
end