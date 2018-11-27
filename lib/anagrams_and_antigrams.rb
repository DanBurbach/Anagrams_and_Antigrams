class AnagramTest
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end
  def word1
    @word1
  end
  def word2
    @word2
  end
  def anagram_filter(words)
    words = @word1, @word2
    lowered_words = words.map(&:downcase)
    if (lowered_words.scan(/[\d]/)&&lowered_words.scan(/[a,e,i,o,u,y]/))||(lowered_words.scan(/[\d]/)||lowered_words.scan(/[a,e,i,o,u,y]/)) == true
      return "This isn't a valid entry, please enter an actual word or words!!"
    end
    punctuation = lowered_words.gsub(/[!@#$%^&*()-=_+|;':",.<>?']/, '')
    string_words = punctuation.gsub(/\s+/, "")
    string_words = first_word, second_word

    array_word1 = @word1.chars.to_a.sort
    array_word2 = @word2.chars.to_a.sort
    if (array_word1 == array_word2) == true
      return "These words are anagrams."
    else
      return "These words are antigrams and are not anagrams."
    end
  end
end
