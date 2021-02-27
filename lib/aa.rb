class Word
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end
  def anagram
    letters1 = @word1.downcase.gsub(/[!@#$%^&*().,:;'~`]/,'').gsub(/\s/,'').split("")
    letters2 = @word2.downcase.gsub(/[!@#$%^&*().,:;'~`]/,'').gsub(/\s/,'').split("")
    
    count_match_letters(letters1, letters2)

    if @word1.gsub(/[AEIOUaeiou]/, '').length == @word1.length || @word2.gsub(/[AEIOUaeiou]/, '').length == @word2.length
      "Please enter a valid word."
    elsif letters2.all? { |letter| letters1.include?(letter) }  
      "These words are anagrams, all #{@letters_match.length} letters match."
    elsif letters2.all? { |letter| !letters1.include?(letter) }  
      "These words are not anagrams but are antigrams (#{@letters_match.length} letters match)."
    else
      "These words are not anagrams or antigrams but #{@letters_match.length} letter(s) match."
    end 
  end 

  def count_match_letters(letters1, letters2)
    @letters_match = []
    letters1.each do |letter|
      if letters2.include?(letter)
        @letters_match.push(letter)
      end
    end
  end

end