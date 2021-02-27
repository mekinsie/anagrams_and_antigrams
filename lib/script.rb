#!/usr/bin/env ruby
require_relative("aa.rb")
puts "Welcome to anagram checker! Please enter your first word"
word1 = gets.chomp

if word1.gsub(/[AEIOUaeiou]/, '').length == word1.length
  puts "Please enter a valid word"
  word1 = gets.chomp
end

puts "Please enter your second word"
word2 = gets.chomp
words = Word.new(word1, word2)
puts words.anagram