# Your code goes here!
class Anagram
    def initialize(word)
      @word = word
    end
  
    def match(words)
      words.select { |w| anagram?(w) }
    end
  
    private
  
    def anagram?(other_word)
      return false if other_word.length != @word.length
      return false if other_word.downcase == @word.downcase
  
      other_word.downcase.chars.sort == @word.downcase.chars.sort
    end
  end
  