class Word
  def initialize(word)
    @word = word
  end
  def aa_check
    letters = @word.downcase.gsub(/[!@#$%^&*().,:;'~`]/,'').gsub(/\s/,'').split("")
  end
end