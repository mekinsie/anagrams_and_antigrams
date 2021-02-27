require('rspec')
require('aa.rb')
require('pry')

describe('Word#anagram') do
  it("returns a confirmation string if both words are anagrams") do
    words = Word.new("elvis", "lives")
    expect(words.anagram).to(eq("These words are anagrams."))
  end
  it("still correctly compares words even if they have different cases") do
    words = Word.new("Elvis", "Lives")
    expect(words.anagram).to(eq("These words are anagrams."))
  end
  it("should check if the inputs are words") do
    words = Word.new("Htt", "Cdfld")
    expect(words.anagram).to(eq("Please enter a valid word."))
  end
  it("should check if the words are antigrams if they are not anagrams") do
    words = Word.new("Spicy", "Mellow")
    expect(words.anagram).to(eq("These words are not anagrams but are antigrams."))
  end
  it("should check if inputs are neither antigrams or anagrams.") do
    words = Word.new("Hot", "Cold")
    expect(words.anagram).to(eq("These words are not anagrams or antigrams"))
  end
  it("should account for multiple words in the inputs") do
    words = Word.new("Dormitory", "Dirty room")
    expect(words.anagram).to(eq("These words are anagrams."))
  end
  it("should return how many letters from the argument are actual matches with the reciever") do
    words = Word.new("Dormitory", "Dirty room")
    expect(words.anagram).to(eq("These words are anagrams and 9 letters match."))
  end
end