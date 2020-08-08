def substrings(text, arr)
  arr = arr.map { |item| item.downcase }
  text = text.downcase
  new_hash = {}


  arr.each do |word|
    if text.include?(word)
      new_hash[word] = text.scan(word).count
    end
  end
  new_hash

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("howdy partner, sit down! How's it going?", dictionary)

