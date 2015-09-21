module FunWithStrings
  def palindrome?
    self.gsub(/\W/, "").downcase == self.gsub(/\W/, "").downcase.reverse
  end
  
  def count_words
    a = self.gsub(/\W/, ' ').downcase
    arr = a.split(" ")
    
    h = Hash.new(0)
    arr.each do |word|
      if h.has_key?(word)
        h[word] += 1
      else
        h[word] = 1
      end
    end
  return h
  end
  
  def anagram_groups
    array = self.split(" ")
    array.each { |word| array[word.downcase.chars.sort.join] }
    
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
