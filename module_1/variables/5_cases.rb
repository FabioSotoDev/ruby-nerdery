# Look at the following programs...

# x = 0
# 3.times do
#   x += 1
# end
# puts x

# and...

# y = 0
# 3.times do
#   y += 1
#   x = y
# end
# puts x

# What does x print to the screen in each case? Do they both give errors? Are the errors different? Why?

# Answers

# First one prints 3, because variable 'x' is declared in the outer scope.
# Second one throws an error, because 'y' is declared correctly, but 'x' cannot be found in the outer scope
# the scope of 'x' is inside the 'do ... end' clause.