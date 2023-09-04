$upper_alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
$lower_alphabet = "abcdefghijklmnopqrstuvwxyz"

def caesar_cipher(string, factor)
    cipher_string = string.split('').map {
        |letter|
        upper_index = $upper_alphabet.index(letter)
        lower_index = $lower_alphabet.index(letter)

        if upper_index !=  nil
            $upper_alphabet[(upper_index + factor) % 26]
        elsif lower_index !=  nil
            $lower_alphabet[(lower_index + factor) % 26]
        else
            letter
        end
    }

    p cipher_string.join("")
end

caesar_cipher("What a string!", 5)