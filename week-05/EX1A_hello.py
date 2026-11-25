print('Hello World!')

message = 'Hello World!'
print(message)

# Hello world prints twice because we have a print statement and a variable that is assigned the string 'Hello World!'.

# Displaying dollars and cents
dollars = 3
cents = .50
print(dollars + cents)
cents = cents + .25
print(dollars + cents)
"""
The first result I got for printing dollars + cents is 3.5 and the second result is 3.75. 
Because the variable dollars is an integer and the variable cents is a float. When you add an integer and a float, the result is a float.
"""

d_str = str("3 dollars")
c_str = str(" 50 cents")
print(d_str + c_str)