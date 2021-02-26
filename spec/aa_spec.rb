require('rspec')
require('aa.rb')
require('pry')

describe('Word#check') do
  it("puts an input into an array with each letter as its own element, case insensitive") do
    words = Word.new("Wolf", "hello")
    expect(words.aa_check).to(eq([["w","o","l","f"],["h", "e", "l", "l", "o"]]))
  end
  it("puts an input into an array with each letter as its own element and removes special characters or spaces") do
    words = Word.new("Wolf! Pasta$", "hello")
    expect(words.aa_check).to(eq( [["w", "o", "l", "f", "p", "a", "s", "t", "a"], ["h", "e", "l", "l", "o"]]))
  end
  it("puts two inputs into two different arrays with each letter as its own element and removes special characters or spaces") do
    words = Word.new("Wolf! Pasta$", "hello")
    expect(words.aa_check).to(eq( [["w", "o", "l", "f", "p", "a", "s", "t", "a"], ["h", "e", "l", "l", "o"]]))
  end
end