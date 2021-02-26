require('rspec')
require('aa.rb')
require('pry')

describe('Word#check') do
  it("puts an input into an array with each letter as its own element, case insensitive") do
    words = Word.new("Wolf", "hello")
    expect(words.aa_check).to(eq("These two words are not anagrams or antigrams"))
  end
  it("puts an input into an array with each letter as its own element and removes special characters or spaces") do
    words = Word.new("Wolf! Pasta$", "hello")
    expect(words.aa_check).to(eq("These two words are not anagrams or antigrams"))
  end
  it("puts two inputs into two different arrays with each letter as its own element and removes special characters or spaces") do
    words = Word.new("Wolf! Pasta$", "hello")
    expect(words.aa_check).to(eq("These two words are not anagrams or antigrams"))
  end
  it("returns true if all the letters in the first word match the letters in the second word") do
    words = Word.new("hello", "hello")
    expect(words.aa_check).to(eq("These two words are anagrams."))
  end
  it("returns a confirmation string both words are anagrams") do
    words = Word.new("elvis", "lives")
    expect(words.aa_check).to(eq("These two words are anagrams."))
  end
  it("still correctly compares words even if they have different cases") do
    words = Word.new("Elvis", "Lives")
    expect(words.aa_check).to(eq("These two words are anagrams."))
  end
  it("should check if the inputs are words") do
    words = Word.new("Htt", "Cdfld")
    expect(words.aa_check).to(eq("Please enter a valid word."))
  end
  it("should check if the words are antigrams if they are not anagrams") do
    words = Word.new("Spicy", "Mellow")
    expect(words.aa_check).to(eq("These two words are not anagrams but are antigrams."))
  end
  it("should account for multiple words being anagrams or antigrams") do
    words = Word.new("Dormitory", "Dirty room")
    expect(words.aa_check).to(eq("These two words are anagrams."))
  end
end