class Word
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end
  def anagram()
    letters1 = @word1.downcase.gsub(/[!@#$%^&*().,:;'~`]/,'').gsub(/\s/,'').split("")
    letters2 = @word2.downcase.gsub(/[!@#$%^&*().,:;'~`]/,'').gsub(/\s/,'').split("")
    
    if @word1.gsub(/[AEIOUaeiou]/, '').length == @word1.length || @word2.gsub(/[AEIOUaeiou]/, '').length == @word2.length
      "Please enter a valid word."
    elsif letters2.all? { |letter| letters1.include?(letter) }  
      "These words are anagrams."
    elsif letters2.all? { |letter| !letters1.include?(letter) }  
      "These words are not anagrams but are antigrams."
    else
      "These words are not anagrams or antigrams"
    end 
  end  
end