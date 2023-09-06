def substrings(words, dictionary)
    result = {}
    current_words = words.split

    current_words.each do |word|
        dictionary.each do |element|
            formatted_word = word.downcase
            formatted_element = element.downcase

            if formatted_word.include? formatted_element
                result[formatted_element] = result[formatted_element] == nil ? 1 : result[formatted_element] + 1
            end
        end
    end
    
    sorted_result = result.sort.to_h

    p sorted_result

    return sorted_result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)

substrings("Howdy partner, sit down! How's it going?", dictionary)