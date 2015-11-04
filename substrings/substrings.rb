def substrings(text, words_for_checking)
  text.downcase!
  results_hash = Hash.new(0)
  words_for_checking.each do |word|
    word.downcase!
    starting_position = 0
    while text.index(word, starting_position)
      results_hash[word] += 1
      starting_position = text.index(word, starting_position) + word.length
    end
  end
  results_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)