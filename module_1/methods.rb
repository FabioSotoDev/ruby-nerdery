def exercise1
    # Write a program that prints a greeting message. 
    # This program should contain a method called greeting that takes a name as its parameter and returns a string.
    def greeting(name)
        greet = "Hello #{name}, nice to meet you"

        puts greet

        return greet
    end

    greeting("Fabio")
end

def exercise2
    # What do the following expressions evaluate to? That is, what value does each expression return?
    # 1. x = 2
        # returns 2 since is an assignation

    # 2. puts x = 2
        # puts return nil

    # 3. p name = "Joe"
        # p method infers that we wanted to save Joe into name, so it returns "Joe"

    # 4. four = "four"
        # other assignation, returns "four"

    # 5. print something = "nothing"
        # print method returns nil
end

def exercise3
    # Write a program that includes a method called multiply that takes two arguments and returns the product of the two numbers.

    def multiply(num1, num2)
        return num1 * num2
    end

    multiply(415, 24)
end

def exercise4
    # What will the following code print to the screen?

    def scream(words)
        words = words + "!!!!"
        return
        puts words
      end
      
    scream("Yippeee")

    # Nothing, since return finishes the method before calling puts, and we return nothing
end

def exercise5
    # 1) Edit the method definition in exercise 4 so that it does print words on the screen. 
    # 2) What does it return now?

    def scream(words)
        words = words + "!!!!"
        puts words
        return
      end
      
    scream("Yippeee")

    # To print something, we move return below puts, and it still returns nil since we return nothing
end

def exercise6
    # What does the following error message tell you?

    #   ArgumentError: wrong number of arguments (1 for 2)
    #     from (irb):1:in `calculate_product'
    #     from (irb):4
    #     from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'

    # We are using the method "calculate_products", but we are passing only 1 argument, and the function requires 2
end