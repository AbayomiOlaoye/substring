dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def substrings(string, dictionary)
  word = string.downcase
  result = Hash.new(0)
  dictionary.each do |str|
    count = 0
    word.scan(/#{str}/) do |marked|
      count += 1
      result[marked] = count
    end
  end
    return result
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)