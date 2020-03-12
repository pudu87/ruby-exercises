dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  result = {}
  string.downcase!
  dictionary.each do |word|
    ind = 0
    result[word] = 0
    while string[ind..-1].index(word) != nil do
      ind += string[ind..-1].index(word) + 1
      result[word] += 1
    end
    result[word] == 0? result.delete(word) : 0
  end
  result
end

p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)