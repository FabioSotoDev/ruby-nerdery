# Exercise 1
# Write down whether the following expressions return true or false. Then type the expressions into irb to see the results.

def exercise1
    (32 * 4) >= 129
    false != !true
    true == 4
    false == (847 == '847')
    (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false
end

# FALSE => 32 * 4 is equal to 128, and 128 is less than 129
# FALSE => !true is false, and false is not different to false
# FALSE => boolean true is different of number 4
# TRUE => parenthesis throws false since int is different to string, and false is equal to false
# TRUE => 100 / 5 is equal to 20, so it is true
    # that true with the ! operator is now false
    # 328 / 4 is equal to 82, so it is true
    # with the previous false and this true and the || operator, we get true
    # !true is false, and the || operator with true returns true
    # the final statement gives as true, since true || false is false

# ------------------------------------------------------

# Exercise 2
# Write a method that takes a string as an argument. 
# The method should return a new, all-caps version of the string, only if the string is longer than 10 characters. 
# Example: change "hello world" to "HELLO WORLD". (Hint: Ruby's String class has a few methods that would be helpful. Check the Ruby Docs!)

def exercise2(str)
    if str.length > 10
        return str.upcase
    end

    return str
end

# ------------------------------------------------------

# Exercise 3
# Write a program that takes a number from the user between 0 and 100 
# and reports back whether the number is between 0 and 50, 51 and 100, or above 100.

def exercise3(number)
    if number < 0
        puts "Your number is below 0"
    elsif number >= 0 && number <= 50
        puts "Your number is between 0 and 50"
    elsif number >= 51 && number <= 100
        puts "Your number is between 51 and 100"
    else
        puts "Your number is above 100"
    end

    return number
end

# Exercise 4
# What will each block of code below print to the screen? 
# Write your answer on a piece of paper or in a text editor and then run each block of code to see if you were correct.

def exercise4
    # Snippet 1
    '4' == 4 ? puts("TRUE") : puts("FALSE")
        # FALSE since string is not equal to int

    # Snippet 2
    x = 2
    if ((x * 3) / 2) == (4 + 4 - x - 3)
        puts "Did you get it right?"
    else
        puts "Did you?"
    end
        # 3 == 3 true then the response is "Did you get it right?"

    # Snippet 3
    y = 9
    x = 10
    if (x + 1) <= (y)
        puts "Alright."
    elsif (x + 1) >= (y)
        puts "Alright now!"
    elsif (y + 1) == x
        puts "ALRIGHT NOW!"
    else
        puts "Alrighty!"
    end
        # 11 <= 9 false, go to next elsif
        # 11 >= 9 true, then the response is "Alright now!"
end

def exercise5
    # When you run the following code...

    # def equal_to_four(x)
    #     if x == 4
    #       puts "yup"
    #     else
    #       puts "nope"
    # end

    # equal_to_four(5)

    # You get the following error message..
    # exercise.rb:8: syntax error, unexpected end-of-input, expecting keyword_end

    # Why do you get this error and how can you fix it?

    # The main error is that the if conditional uses the "end" word to finish, but the function is expecting also and "end"
    # The program should be like this:

    def equal_to_four(x)
        if x == 4
          puts "yup"
        else
          puts "nope"
        end
    end

    equal_to_four(5)
end


def exercise6
    # Write down whether the following expressions return true or false or raise an error. 
    # Then, type the expressions into irb to see the results.

    (32 * 4) >= "129" # Error for comparing int with string
    847 == '847' # FALSE
    '847' < '846' # FALSE
    '847' > '846' # TRUE
    '847' > '8478' # FALSE
    '847' < '8478' # TRUE
end