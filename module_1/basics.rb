def exercise1
    # Add two strings together that, when concatenated, 
    # return your first and last name as your full name in one string.

    fullName = "Fabio" + " " + "Soto"

    return fullName
end

def exercise2(thousandNumber = 4321)
    # Use the modulo operator, division, or a combination of both to take 
    # a 4 digit number and find the digit in the: 
    # 1) thousands place 2) hundreds place 3) tens place 4) ones place

    thousand = thousandNumber / 1000
    hundred = thousandNumber % 1000 / 100
    tens = thousandNumber % 100 / 10
    ones = thousandNumber % 10

    puts thousand, hundred, tens, ones

    return thousandNumber
end

def exercise3
    # Write a program that uses a hash to store a list of movie titles with the year they came out. 
    # Then use the puts command to make your program print out the year of each movie to the screen. 
    # The output for your program should look something like this.

    movies = {
        :movie1 => 1975,
        :movie2 => 2004,
        :movie3 => 2013,
        :movie4 => 2001,
        :movie5 => 1981,
    }

    puts movies[:movie1]
    puts movies[:movie2]
    puts movies[:movie3]
    puts movies[:movie4]
    puts movies[:movie5]

    return movies
end

def exercise4
    # Use the dates from the previous example and store them in an array. 
    # Then make your program output the same thing as exercise 3.

    dates = [1975, 2004 ,2013 ,2001 ,1981]

    puts dates

    return dates
end

def exercise5
    # Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.

    factorial5 = 5 * 4 * 3 * 2
    factorial6 = 6 * factorial5
    factorial7 = 7 * factorial6
    factorial8 = 8 * factorial7

    puts factorial5, factorial6, factorial7, factorial8

    return factorial5, factorial6, factorial7, factorial8
end

def exercise6(num1 = 4.30, num2 = 6.13, num3 = 124.34)
    # Write a program that calculates the squares of 3 float numbers of your choosing
    # and outputs the result to the screen.

    results = [num1 * num1, num2 * num2, num3 * num3]

    puts results

    return results
end

def exercise7
    # What does the following error message tell you?    
    # SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
    #     from /usr/local/rvm/rubies/ruby-2.5.3/bin/irb:16:in `<main>'
    
    response = "In the code, there is an open bracket, but there is no close bracket for that open bracket"

    return response
end