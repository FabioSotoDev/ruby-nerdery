def exercise1
    # What does the each method in the following program return after it is finished executing?

    x = [1, 2, 3, 4, 5]
    x.each do |a|
        a + 1
    end

    # Returns the same array, we iterate the x list, and modify the local variable a
    # but we don't store this new values in any array.
end

def exercise2
    # Write a while loop that takes input from the user, performs an action,
    # and only stops when the user types "STOP". Each loop can get info from the user.

    loop do
        puts "Write something"

        word = gets.chomp

        puts "Your input is #{word}"

        break if word == 'STOP'
    end
end

def exercise3
    # Write a method that counts down to zero using recursion.
    def recursive_countdown(number)
        puts number

        if number > 0
            recursive_countdown(number - 1)
        end
        
    end

    recursive_countdown(10)
    recursive_countdown(-5)
end