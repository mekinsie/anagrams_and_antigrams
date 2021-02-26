require('rspec')
require('aa.rb')
require('pry')

describe('Word#check') do
  it("puts the input into an array with each letter as its own element, case insensitive") do
    word = Word.new("Wolf")
    expect(word.aa_check).to(eq(["w","o","l","f"]))
  end
end