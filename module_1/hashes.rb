def exercise1
    # Given a hash of family members, with keys as the title and an array of names as the values,
    # use Ruby's built-in select method to gather only siblings' names into a new array.

    family = {  
        uncles: ["bob", "joe", "steve"],
        sisters: ["jane", "jill", "beth"],
        brothers: ["frank","rob","david"],
        aunts: ["mary","sally","susan"]
    }

    siblings = family.select{ |key, value| key == :sisters || key == :brothers }

    siblings = siblings.values.flatten
end

def exercise2
    # Look at Ruby's merge method. Notice that it has two versions. 
    # What is the difference between merge and merge!? 
    # Write a program that uses both and illustrate the differences.

    # merge => the original hash is not modified, stores the result into a copy
    # merge! => the original hash is modified
end

def exercise3
    # Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys.
    # Then write a program that does the same thing except printing the values. Finally, write a program that prints both.

    hash = {
        dog: ":perro_debil_con_frio:",
        cat: ":meow_comfysneaky:",
    }

    hash.each_key{ |key| puts key }

    hash.each_value{ |value| puts value }

    hash.each{ |key, value| puts "#{key} => #{value}" }
end

def exercise4
    # Given the following expression, how would you access the name of the person?

    person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

    person[:name]
end

def exercise5
    # What method could you use to find out if a Hash contains a specific value in it? 
    # Write a program that verifies that the value is within the hash.

    hash = {
        dog: ":perro_debil_con_frio:",
        cat: ":meow_comfysneaky:",
    }

    hash.value?(":perro_debil_con_frio:")
    hash.has_value?(":perro_debil_con_frio:")
    hash.value?(":dog_comfysneaky:")
    hash.has_value?(":dog_comfysneaky:")
end

def exercise6
    # Given the following code...

    x = "hi there"
    my_hash = {x: "some value"}
    my_hash2 = {x => "some value"}

    # What's the difference between the two hashes that were created?

    # First one has a key "x"
    # Second one uses x as key, so its key is "hi there"
end

def exercise7
    # If you see this error, what do you suspect is the most likely problem?

    # NoMethodError: undefined method `keys' for Array

    # A. We're missing keys in an array variable.
    # B. There is no method called keys for Array objects.
    # C. keys is an Array object, but it hasn't been defined yet.
    # D. There's an array of strings, and we're trying to get the string keys out of the array, but it doesn't exist.

    # B, "keys" is the method, and we are trying to use it in an array, which is not defined
end