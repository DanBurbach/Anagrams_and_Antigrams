module Anagram_Test
  def self.input_words?(word1, word2)
    @word1 = word1
    @word2 = word2
  end
  def word1
    @word1
  end
  def word2
    @word2
  end
  def anagram_filter
    inputted_words = @word1, @word2
    lowercase_words = inputted_words.downcase!()
    removed_symbols = lowercase_words.gsub!(/[!@#$%^&*()-=_+|;':",.<>?']/, '')
    sifted_words[] = removed_symbols.gsub!(/\s+/, "")

    if (sifted_words.scan(/[\d]/)&&sifted_words.scan(/[a,e,i,o,u,y]/))||(sifted_words.scan(/[\d]/)||sifted_words.scan(/[a,e,i,o,u,y]/)) == true
      return "This isn't a valid entry, please enter an actual word or words!!"
    else
      array_word1 = @word1.chars.to_a.sort
      array_word2 = @word2.chars.to_a.sort
      if (array_word1 == array_word2) == true
  binding.pry
        return "These words are anagrams."
      else
        return "These words are antigrams and are not anagrams."
      end
    end
  end
end
