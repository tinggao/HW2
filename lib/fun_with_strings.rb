module FunWithStrings
  def palindrome?
    copy=self.gsub(/\W/,'').downcase
    copy==copy.reverse ? true : false
  end

  def count_words
    self.downcase().gsub(/\W/, " ").split(" ").inject(Hash.new(0)){|hash,word| hash[word] +=1; hash}
  end

  def anagram_groups
      self.split(" ").group_by{|x| x.downcase.chars.sort}.values
  end  

end
# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end 
