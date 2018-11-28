class AnagramTest
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def anagram_filter
    words = @word1, @word2
    lowered_words = words.map(&:downcase)
     if (lowered_words.count(/[\d]/)&&lowered_words.count {|c| c =~ /[a,e,i,o,u,y]/}) || (lowered_words.count(/[\d]/)||lowered_words.count.count {|c| c =~ /[a,e,i,o,u,y]/})
       return "This isn't a valid entry, please enter an actual word or words!!"
     end
      punctuation1 = lowered_words[0].gsub(/[!@#$%^&*()-=_+|;':",.<>?']/, '')
      punctuation2 = lowered_words[1].gsub(/[!@#$%^&*()-=_+|;':",.<>?']/, '')

      array_word1 = punctuation1.gsub(/\s+/, "")
      array_word2 = punctuation2.gsub(/\s+/, "")

      if (array_word1.chars.to_a.sort == array_word2.chars.to_a.sort)
        return "These words are anagrams."
      else
        return "These words are antigrams and are not anagrams."
      end
  end
end
