def exercise1
    # Below we have given you an array and a number. 
    # Write a program that checks to see if the number appears in the array.

    arr = [1, 3, 5, 7, 9, 11]
    number = 3
    response = ""

    if !arr.include?(number)
        response = "does not "
    end

    puts "Number #{number} #{response}exists in the array #{arr}"
end

def exercise2
    # What will the following programs return? What is the value of arr after each?

    arr = ["b", "a"]
    arr = arr.product(Array(1..3))
    arr.first.delete(arr.first.last)

    # arr.product returns an array of arrays with all the combinations "b",1..3 and "a",1..3
    # since arr = arr.product, arr is fully changed
    # arr.first get the first sub array, which is ["b",1]
    # ["b",1].last gets the 1 value
    # ["b",1].delete(1) removes the integer 1 from this sub array
    # in the end, arr only has updated the first sub array and the final result is:
        # [["b"], ["b",2], ["b",3], ["a",1], ["a",2], ["a",3]]

    arr = ["b", "a"]
    arr = arr.product([Array(1..3)])
    arr.first.delete(arr.first.last)

    # arr.products with other array is assigned into arr
    # current result is [["b", [1, 2, 3]], ["a", [1, 2, 3]]]
    # arr.first selects ["b", [1, 2, 3]]
    # ["b", [1, 2, 3]].last gets [1, 2, 3]
    # ["b", [1, 2, 3]].delete([1, 2, 3]) transforms this sub array to have only ["b"]
    # final result is: [["b"], ["a", [1, 2, 3]]]
end

def exercise3
    # How do you return the word "example" from the following array?
    arr = [["test", "hello", "world"],["example", "mem"]]

    puts arr[1][0]
end

def exercise4
    # What does each method return in the following example?
    arr = [15, 7, 18, 5, 12, 8, 5, 1]

    arr.index(5) # => 3, first 5 position in arr is 3

    arr.index[5] # => error, index needs parenthesis and the number to find

    arr[5] # => 8, arr in position 5, which is 8
end

def exercise5
    # What is the value of a, b, and c in the following program?
    string = "Welcome to America!"
    a = string[6] # => e
    b = string[11] # => A
    c = string[19] # => nil, 19 is greather than the size of the string
end

def exercise6
    # You run the following code...
    names = ['bob', 'joe', 'susan', 'margaret']
    names['margaret'] = 'jody'

    # ...and get the following error message:
    # TypeError: no implicit conversion of String into Integer
    #     from (irb):2:in `[]='
    #     from (irb):2
    #     from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'

    # What is the problem and how can it be fixed?

    # We are trying to access an int position of the array using an string, which is not allowed

    # The fix could be

    names[names.index('margaret')] = 'jody'
end

def exercise7
    # Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.

    [1, "hello", 10, 25, "world"].each_with_index{ 
        |element, index|
        puts "Element at #{index} => #{element}"
    }
end

def exercise8
    # Write a program that iterates over an array and builds a new array that is 
    # the result of incrementing each value in the original array by a value of 2. 
    # You should have two arrays at the end of this program, The original array and the new array you've created. 
    # Print both arrays to the screen using the p method instead of puts.


    originalArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

    finalArray = originalArray.map{ |element| element + 2 }

    print originalArray, finalArray

end