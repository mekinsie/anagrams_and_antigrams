#!/usr/bin/env ruby
require_relative("aa.rb")

puts "Please enter your first word"
word1 = gets.chomp
puts "Please enter your second word"
word2 = gets.chomp
words = Word.new(word1, word2)
puts words.anagram