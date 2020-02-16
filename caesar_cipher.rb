def caesar_cipher (sentence, shift)
    characters = sentence.split("")
    encrypted = [];

    i = 0
    while i < characters.length
        char = characters[i]
       
        if (char.match(/[a-z]/))
                encrypted.push(((char.ord - 96 + shift)%26 + 96).chr)
        elsif (char.match(/[A-Z]/))
                encrypted.push(((char.ord - 65 + shift)%26 + 65).chr)
        else
                encrypted.push(char)
        end

        i += 1

    end

    puts encrypted.join
end

caesar_cipher("What a string!",5)





