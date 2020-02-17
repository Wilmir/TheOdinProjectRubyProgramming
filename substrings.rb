def substrings(message, dictionary)
    results = Hash.new(0)
    messageArr = message.downcase.split(" ")

    dictionary.each do |word|
        messageArr.each do |substring|
            results[word] += 1 if substring.include?(word)
        end
    end

    p results
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below",dictionary);
substrings("Howdy partner, sit down! How's it going?", dictionary)
