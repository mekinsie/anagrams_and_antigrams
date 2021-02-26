class Word
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end
  def aa_check()
    letters1 = @word1.downcase.gsub(/[!@#$%^&*().,:;'~`]/,'').gsub(/\s/,'').split("")
    letters2 = @word2.downcase.gsub(/[!@#$%^&*().,:;'~`]/,'').gsub(/\s/,'').split("")
    return letters1, letters2
  end
end